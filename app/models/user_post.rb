class UserPost < ApplicationRecord
  belongs_to :user
  belongs_to :post
  has_many :post_tags, through: :user_post_tag
end
