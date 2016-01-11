class Event < ActiveRecord::Base
  belongs_to :speaker
  belongs_to :crowd
  belongs_to :venue

  has_many :bookings, dependent: :destroy
  has_many :events, through: :bookings
end
