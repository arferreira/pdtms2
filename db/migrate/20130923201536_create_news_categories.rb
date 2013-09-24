class CreateNewsCategories < ActiveRecord::Migration
  def change
    create_table :news_categories do |t|
      t.string :title
      t.string :description

      t.timestamps
    end
  end
end
