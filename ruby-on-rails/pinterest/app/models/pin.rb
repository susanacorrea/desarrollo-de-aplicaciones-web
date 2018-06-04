class Pin < ApplicationRecord
  validates :name, presence:true
  validates :photo, presence:true
  validates :description, presence:true

  belongs_to :user, optional: true
end
