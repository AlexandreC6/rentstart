class Car < ApplicationRecord
  belongs_to :user
  has_many :resevcations
  validates :brand, :type, :price, presence: true

end
