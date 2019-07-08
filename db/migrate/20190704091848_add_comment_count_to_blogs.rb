class AddCommentCountToBlogs < ActiveRecord::Migration[5.0]
  def change
    change_table :blogs do |f|
      f.integer :comments_count
    end
  end
end
