class Post < ApplicationRecord
  belongs_to :category, optional: true
  has_many :comments, dependent: :destroy
  has_many :post_authorings, class_name: "UserPosting", dependent: :destroy
  has_many :authors, through: :post_authorings, class_name: "User", source: :user
  has_many :post_taggings, dependent: :destroy
  has_many :tags, through: :post_taggings, dependent: :destroy
  accepts_nested_attributes_for :comments,
                                reject_if: :all_blank,
                                allow_destroy: true
end
