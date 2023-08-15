class Instrument < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :name, presence: true
  validates :photo_url, presence: true
end
