class CreateNewsfs < ActiveRecord::Migration
  def change
    create_table :newsfs do |t|
      t.string :title
      t.string :description
      t.text :content
      t.string :author
      t.date :date

      t.timestamps
    end
  end
end
