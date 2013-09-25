class AddImagenewsToNewss < ActiveRecord::Migration
  def change
    add_column :newsses, :imagenews, :string
  end
end
