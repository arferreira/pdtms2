class AddImagenewsToNewsf < ActiveRecord::Migration
  def change
    add_column :newsfs, :imagenews, :string
  end
end
