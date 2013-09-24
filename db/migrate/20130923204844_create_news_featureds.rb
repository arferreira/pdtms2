class CreateNewsFeatureds < ActiveRecord::Migration
  def change
    create_table :news_featureds do |t|
      t.string :title
      t.string :description
      t.text :content
      t.references :newscategory_id
      t.string :author
      t.date :date

      t.timestamps
    end
    add_index :news_featureds, :newscategory_id_id
  end
end
