class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  has_one_attached :photo

  has_many :goals
  has_many :events

  has_many :reviews
  has_many :events, through: :reviews

  has_many :messages
  has_many :events, through: :messages

  has_many :favourites
  has_many :events, through: :favourites

  has_many :event_users
  has_many :events, through: :event_users


  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
