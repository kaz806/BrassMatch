class Tweet < ApplicationRecord
    belongs_to :user
    has_many :likes

    has_many :likes, dependent: :destroy
    has_many :liked_users, through: :likes, source: :user

    def likes_count
    likes.size
    end
    
end
