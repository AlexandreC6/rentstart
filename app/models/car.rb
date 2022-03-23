class Car < ApplicationRecord
  belongs_to :user
  has_many :resevations
<<<<<<< HEAD
  validates :brand, :type, :price, presence: true
=======
  validates :brand, :price, presence: true

>>>>>>> master
end
