class Instrument < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :name, presence: true
  has_many_attached :photos
  has_many :reviews

  include PgSearch::Model
  pg_search_scope :search_by_name_and_category,
  against: [ :name, :category ],
  using: {
    tsearch: { prefix: true }
  }
end
