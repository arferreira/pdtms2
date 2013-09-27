class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.string :description
      t.string :city
      t.date :date

      t.timestamps
    end
  end
end
