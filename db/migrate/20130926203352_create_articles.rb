class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.string :description
      t.text :content
      t.string :author
      t.date :date
      t.string :imagearticle

      t.timestamps
    end
  end
end
