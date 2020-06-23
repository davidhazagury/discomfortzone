class User < ApplicationRecord
  validates :first_name, presence: :true
  validates :last_name, presence: :true
  # 1-N Relationship: a user has many bucket list items (called goals for simplicity)

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable


  has_many :goals

  # 1-N Relationship: a host has many events
  has_many :events

  # N-N Relationship between Event and User, connected by join table >reviews<
  has_many :reviews
  has_many :events, through: :reviews

  # N-N Relationship between Event and User, connected by join table >messages<
  has_many :messages
  has_many :events, through: :messages

  # N-N Relationship between Event and User, connected by join table >favourites<
  has_many :favourites
  has_many :events, through: :favourites

  # N-N Relationship between Event and User, connected by >event_users<
  has_many :event_users
  has_many :events, through: :event_users


  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable



  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
