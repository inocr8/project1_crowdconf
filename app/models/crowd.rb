class Crowd < ActiveRecord::Base
  has_many :events
  has_many :speakers, through: :events
  has_many :venues, through: :events
  has_many :tags, through: :events

  mount_uploader :crowd_image, CrowdImageUploader

  validates :name, :group, presence: true
end
