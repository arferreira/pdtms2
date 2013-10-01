class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :imagephoto
      t.references :gallery_id

      t.timestamps
    end
    add_index :photos, :gallery_id_id
  end
end
