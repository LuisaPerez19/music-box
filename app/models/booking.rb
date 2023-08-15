class Booking < ApplicationRecord
  belongs_to :instrument
  belongs_to :user
  validate :start_date_in_future
  validate :end_date_after_start_date
end
