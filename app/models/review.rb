class Review < ApplicationRecord
  belongs_to :user
  belongs_to :instrument
  validates :content, presence: true, length: { minimum: 10 }
end
