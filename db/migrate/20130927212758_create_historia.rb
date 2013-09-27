class CreateHistoria < ActiveRecord::Migration
  def change
    create_table :historia do |t|
      t.text :content
      t.string :image

      t.timestamps
    end
  end
end
