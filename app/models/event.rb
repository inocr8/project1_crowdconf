class Event < ActiveRecord::Base
  belongs_to :speaker
  belongs_to :crowd
  belongs_to :venue
  belongs_to :tag

  has_many :bookings
  has_many :users, through: :bookings
  has_many :comments

  mount_uploader :event_image, EventImageUploader

  validates :name, :short, :description, :speaker_id, :venue_id, :crowd_id, presence: true, uniqueness: true
end
