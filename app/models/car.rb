class Car < ApplicationRecord
  belongs_to :user
  has_many :resevations
  validates :brand, :type, :price, presence: true
end
