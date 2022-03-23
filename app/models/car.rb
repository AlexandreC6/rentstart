class Car < ApplicationRecord
  belongs_to :user
  has_many :resevations
  validates :brand, :fuel, :price, presence: true
end
