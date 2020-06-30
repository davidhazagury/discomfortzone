class EventUser < ApplicationRecord
  belongs_to :user
  belongs_to :event

  validates :user, uniqueness: { scope: :event, message: "has already applied" }
  validates :motivation, length: { in: 4..500 }

  enum status: [:applied, :accepted, :rejected]
end
