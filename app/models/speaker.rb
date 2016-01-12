class Speaker < ActiveRecord::Base
  has_many :events
  has_many :venues, through: :events
  has_many :crowds, through: :events
  has_many :tags, through: :events

  mount_uploader :speaker_image, SpeakerImageUploader
end
