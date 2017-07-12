class RenamePostTagsToPostTaggings < ActiveRecord::Migration[5.0]
  def change
    rename_table :post_tags, :post_taggings
  end
end
