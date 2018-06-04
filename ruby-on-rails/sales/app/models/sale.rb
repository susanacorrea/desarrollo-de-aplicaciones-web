class Sale < ApplicationRecord
  belongs_to :client
  belongs_to :user, optional: true
  belongs_to :discount, optional: true
  has_many :product_quantities
  has_one :comission

  after_save do
    calc = 0

    self.product_quantities.each {|p| calc += p.product.price * p.quantity}

    if self.discount
      if self.discount.kind == "porcent"
        calc -= calc / self.discount.value
      elsif self.discount.kind == "money"
        calc -= self.discount.value
      end
    end

    if self.comission.present?
      self.comission.update(value: (calc * 0.1), status: :pending)
    else
      Comission.create(value: (calc * 0.1), user: self.user, sale: self, status: :pending)
    end
  end

end
