class Event < ActiveRecord::Base
  belongs_to :speaker
  belongs_to :crowd
  belongs_to :venue
  belongs_to :tag

  has_many :bookings
  has_many :users, through: :bookings
  has_many :comments
end
