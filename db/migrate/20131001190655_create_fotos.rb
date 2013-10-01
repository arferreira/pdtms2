class CreateFotos < ActiveRecord::Migration
  def change
    create_table :fotos do |t|
      t.string :imagefoto
      t.references :gallery

      t.timestamps
    end
    add_index :fotos, :gallery_id
  end
end
