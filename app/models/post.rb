class Post < ApplicationRecord
    belongs_to :user
    has_many :comments

    validates :title, presence: true
    validates :body, presence: true
    validates :user, presence: true, if: -> { user_id.present? }
end
