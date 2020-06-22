class Event < ApplicationRecord
  belongs_to :user
  has_many :users, through: :reviews

  has_many :messages
  has_many :users, through: :messages

  has_many :favourites
  has_many :users, through: :favourites

  has_many :event_users
  has_many :users, through: :event_users

  has_many :reviews
  has_many :users, through: :reviews

  has_one_attached :photo
end
