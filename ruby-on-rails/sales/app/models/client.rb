class Client < ApplicationRecord
  belongs_to :user, optional: true
  enum status: [:active, :inactive]
  has_many :address
end
