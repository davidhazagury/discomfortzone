class Event < ApplicationRecord
  # 1-N relationship: a post belongs to a host
  belongs_to :user

  # N-N Relationship between Event and User, connected by join table >messages<
  has_many :messages
  # has_many :users, through: :messages

  # N-N Relationship between Event and User, connected by join table >favourites<
  has_many :favourites
  # has_many :users, through: :favourites

  # N-N Relationship between Event and User, connected by join table >event_users<
  has_many :event_users
  has_many :users, through: :event_users

  # N-N Relationship between Event and User, connected by join table >reviews<
  has_many :reviews
  # has_many :users, through: :reviews

  # Necessary for Maps and Geocoding
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  # START + END DATE
  validates :start_time, presence: true
  validates :end_time, presence: true
  validate :end_date_after_start_date

  # Cloudinary image
  has_one_attached :photo
  validates :photo, presence: true

  def spots_left
    capacity - event_users.accepted.count
  end

  def favourited?(user)
    favourites.pluck(:user_id).include? user.id
  end

  def participant?(user)
    return false unless user
    event_users.accepted.pluck(:user_id).include?(user.id)
  end

  private

  def end_date_after_start_date
    return if end_time.blank? || start_time.blank?

    if end_time <= start_time
      errors.add(:end_date, "must be after the start date")
    end
  end
end
