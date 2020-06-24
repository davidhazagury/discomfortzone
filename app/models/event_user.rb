class EventUser < ApplicationRecord
  belongs_to :user
  belongs_to :event

  validates :user, uniqueness: { scope: :event }

  enum status: [:applied, :accepted, :rejected]
end
