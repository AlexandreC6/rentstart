class Car < ApplicationRecord
  belongs_to :user
  has_many :resevations, dependent: :destroy
  validates :brand, :fuel, :price, presence: true
  has_one_attached :photo
end
