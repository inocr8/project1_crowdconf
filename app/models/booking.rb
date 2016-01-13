class Booking < ActiveRecord::Base
  belongs_to :user
  belongs_to :event

  validates :event_id, :tickets_booked, presence: true
end
