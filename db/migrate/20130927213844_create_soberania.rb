class CreateSoberania < ActiveRecord::Migration
  def change
    create_table :soberania do |t|
      t.text :content

      t.timestamps
    end
  end
end
