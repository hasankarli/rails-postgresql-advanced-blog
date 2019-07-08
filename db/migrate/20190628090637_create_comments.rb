class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      
      t.integer :ust_yorum
      t.integer :kullanici_id
      t.string  :isim, limit: 50
      t.string  :mail, limit: 50
      t.text    :icerik
      t.string  :blog
      t.timestamps
    end
  end
end
