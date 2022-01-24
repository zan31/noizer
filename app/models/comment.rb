class Comment < ApplicationRecord
    
    belongs_to :song
    belongs_to :user
    validates :body, presence: true
end
