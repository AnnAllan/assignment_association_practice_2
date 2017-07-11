class User < ApplicationRecord
  has_many :post_authorings, class_name: "UserPost"
  has_many :authored_posts, through: :post_authorings, class_name: "Post", source: :post, dependent: :destroy
  has_many :authored_comments, class_name: "Comment", dependent: :destroy
  has_many :tags_on_authored_posts, through: :post_taggings, class_name: "Tag",  source: :tag
end
