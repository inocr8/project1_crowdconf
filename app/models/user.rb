class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :bookings, dependent: :destroy
  has_many :events, through: :bookings
  has_many :comments

  mount_uploader :user_image, UserImageUploader

  def role?(role_to_compare)
    self.role.to_s == role_to_compare.to_s
  end
end
