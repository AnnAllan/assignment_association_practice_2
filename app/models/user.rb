class User < ApplicationRecord
  has_many :user_posts
  has_many :posts, through: :user_posts
  has_many :comments, foreign_key: :user_id
end
