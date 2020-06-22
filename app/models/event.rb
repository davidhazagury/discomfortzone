class Event < ApplicationRecord
  # 1-N relationship: a post belongs to a host
  belongs_to :user

  # N-N Relationship between Event and User, connected by join table >messages<
  has_many :messages
  has_many :users, through: :messages

  # N-N Relationship between Event and User, connected by join table >favourites<
  has_many :favourites
  has_many :users, through: :favourites

  # N-N Relationship between Event and User, connected by join table >event_users<
  has_many :event_users
  has_many :users, through: :event_users

  # N-N Relationship between Event and User, connected by join table >reviews<
  has_many :reviews
  has_many :users, through: :reviews

  # Necessary for Maps and Geocoding
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
