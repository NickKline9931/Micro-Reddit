class Comment < ApplicationRecord
    belongs_to :user
    belongs_to :post

    validates :body, presence: true
    validates :post, presence: true, if: -> { post_id.present? }
    validates :user, presence: true, if: -> { user_id.present? }
end
