class Event < ActiveRecord::Base
  belongs_to :speaker
  belongs_to :crowd
  belongs_to :venue
end
