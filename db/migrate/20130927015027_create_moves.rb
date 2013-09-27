class CreateMoves < ActiveRecord::Migration
  def change
    create_table :moves do |t|
      t.string :link

      t.timestamps
    end
  end
end
