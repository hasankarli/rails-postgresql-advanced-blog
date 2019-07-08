class CreateCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :categories do |t|
      t.string  :ad, limit: 50
      t.integer :ust_kategori
      t.timestamps
    end
  end
end
