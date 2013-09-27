class CreateLideres < ActiveRecord::Migration
  def change
    create_table :lideres do |t|
      t.string :name
      t.text :content

      t.timestamps
    end
  end
end
