class CreateExecutivas < ActiveRecord::Migration
  def change
    create_table :executivas do |t|
      t.text :content

      t.timestamps
    end
  end
end
