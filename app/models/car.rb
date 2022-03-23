class Car < ApplicationRecord
  belongs_to :user
  has_many :resevations
  validates :brand, :price, presence: true
end
