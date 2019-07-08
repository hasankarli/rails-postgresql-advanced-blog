class AddCategoryIdToBlogs < ActiveRecord::Migration[5.0]
  def change
    change_table :blogs do |f|
      f.integer :category_id
    end
  end
end
