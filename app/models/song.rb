class Song < ApplicationRecord
    mount_uploader :audio, AudioUploader
    mount_uploader :image, ImageUploader

    validates :title, presence: true

    belongs_to :user
    belongs_to :category
    has_many :likes, dependent: :destroy
    has_many :comments, dependent: :destroy

    def self.search(keyword)
        where(["LOWER(title) like?", "%#{keyword}%"])
    end
end
