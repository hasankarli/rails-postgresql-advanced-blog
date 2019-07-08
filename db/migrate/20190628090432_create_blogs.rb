class CreateBlogs < ActiveRecord::Migration[5.0]
  def change
    create_table :blogs do |t|
      t.string  :baslik, limit: 100
      t.text    :icerik
      t.string  :kisaicerik, limit: 500
      t.string  :etiketler, limit: 255
      t.integer :yazar
      t.integer :kategori
      t.timestamps
    end
  end
end
