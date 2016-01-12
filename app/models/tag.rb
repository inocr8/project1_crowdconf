class Tag < ActiveRecord::Base
  has_many :events
  has_many :venues, through: :events
  has_many :crowds, through: :events
  has_many :speakers, through: :events
end
