class Venue < ActiveRecord::Base
  has_many :events
  has_many :speakers, through: :events
  has_many :crowds, through: :events
  has_many :tags, through: :events

  mount_uploader :venue_image, VenueImageUploader

  validates :name, :description, :capacity, presence: true, uniqueness: true
end
