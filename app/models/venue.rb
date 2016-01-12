class Venue < ActiveRecord::Base
  has_many :events
  has_many :speakers, through: :events
  has_many :crowds, through: :events
end
