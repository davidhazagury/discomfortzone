class EventUser < ApplicationRecord
  belongs_to :user
  belongs_to :event

  enum status: [:applied, :accepted, :rejected]
end
