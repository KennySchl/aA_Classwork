class BandChange < ActiveRecord::Migration[5.2]
  def change
    add_column :bands, :description, :text 
    add_column :bands, :image_url, :string
    add_index :bands, :name, unique: true
  end
end
