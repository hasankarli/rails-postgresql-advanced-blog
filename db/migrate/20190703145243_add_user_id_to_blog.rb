class AddUserIdToBlog < ActiveRecord::Migration[5.0]
  def change
    change_table :blogs do |t|
      t.integer :user_id
    end
    change_table :comments do |t|
      t.integer :user_id
    end
  end
end
