class Post < ApplicationRecord
  belongs_to :category
  has_many :comments
  has_many :post_users, class_name: "UserPosts"
  has_many :users, through: :post_users
  has_many :post_tags, class_name: "PostTags"
  has_many :tags, through: :post_tags
end
