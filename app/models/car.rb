class Car < ApplicationRecord
  belongs_to :user
  has_many :resevations, dependent: :destroy
  validates :brand, :fuel, :price, presence: true

  include PgSearch::Model
  pg_search_scope :search_by_brand,
    against: [ :brand ],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
end
