class Car < ApplicationRecord
  belongs_to :user
  has_many :resevations, dependent: :destroy
  validates :brand, :fuel, :price, presence: true
  has_one_attached :photo

  include PgSearch::Model
  pg_search_scope :search_by_brand,
    against: [ :brand ],
    using: {
      tsearch: { prefix: true }
    }
end
