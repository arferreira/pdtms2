class CreateNewsses < ActiveRecord::Migration
  def change
    create_table :newsses do |t|
      t.string :title
      t.string :description
      t.text :content
      t.string :author
      t.date :date

      t.timestamps
    end
  end
end
