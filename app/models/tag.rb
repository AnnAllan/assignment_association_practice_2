class Tag < ApplicationRecord
  has_many :post_tags, class_name: "PostTag"
  has_many :posts, through: :post_tags
end
