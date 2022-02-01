class User < ApplicationRecord
  mount_uploader :image, ImageUploader
  mount_uploader :coverimage, ImageUploader
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :omniauthable, omniauth_providers:[:google_oauth2, :facebook]

  validates :name, presence: true

  has_many :songs, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :comments, dependent: :destroy

  has_many :following, class_name: "Relationship", foreign_key: "following_id", dependent: :destroy
  has_many :follower, class_name: "Relationship", foreign_key: "follower_id", dependent: :destroy

  has_many :following_user, through: :following, source: :follower
  has_many :follower_user, through: :follower, source: :following

  def self.search(keyword)
    where(["LOWER(name) like?", "%#{keyword}%"])
  end

  def follow(user_id)
    following.create(follower_id: user_id)
  end

  def unfollow(user_id)
    following.find_by(follower_id: user_id).destroy
  end

  def following?(user_id)
    following_user.include?(user_id)
  end

  def self.from_omniauth(auth)
    user = User.where(email: auth.info.email).first
    user ||= User.create!(provider: auth.provider, uid: auth.uid, name: auth.info.name, email: auth.info.email, password: Devise.friendly_token[0, 20])
      user
  end
end
