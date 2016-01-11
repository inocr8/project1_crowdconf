class Speaker < ActiveRecord::Base
  has_many :events
end
