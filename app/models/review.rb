class Review < ApplicationRecord
  belongs_to :user
  belongs_to :event
  validates :event, uniqueness: {scope: :user, message: "You've already reviewed this event"}
end
