class RenameUserPostsToUserPosting < ActiveRecord::Migration[5.0]
  def change
    rename_table :user_posts, :user_postings
  end
end
