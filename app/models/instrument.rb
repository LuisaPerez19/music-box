class Instrument < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :name, presence: true
  has_many_attached :photos
  has_many :reviews
end
