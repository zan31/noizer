class Song < ApplicationRecord
    mount_uploader :audio, AudioUploader
    mount_uploader :image, ImageUploader

    belongs_to :user
    belongs_to :category
    has_many :likes, dependent: :destroy
end
