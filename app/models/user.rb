class User < ApplicationRecord
    has_many :posts
    has_many :comments
    
    validates :username, presence: true, uniqueness: true, length: { in: 8..16 }
    validates :password, presence: true, uniqueness: true, length: { in: 8..16 }

end
