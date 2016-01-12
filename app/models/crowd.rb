class Crowd < ActiveRecord::Base
  has_many :events
  has_many :speakers, through: :events
  has_many :venues, through: :events
  has_many :tags, through: :events
end
