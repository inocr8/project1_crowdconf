class Event < ActiveRecord::Base
  belongs_to :speaker
  belongs_to :crowd
  belongs_to :venue
  belongs_to :tag

  has_many :bookings
  has_many :users, through: :bookings
  has_many :comments

  mount_uploader :event_image, EventImageUploader

  validates :name, :short, :description, :speaker_id, :venue_id, :crowd_id, presence: true

  def event_find
    event = Event.find(self.id)
  end

  def capacity_left
    event_find
    tickets_left = venue.capacity - bookings.sum(:tickets_booked)
  end

  def capacity_sold_out?
    event_find
    tickets_left = venue.capacity - bookings.sum(:tickets_booked)
    if tickets_left < 0
      return true
    end
  end

end
