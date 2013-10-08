class CreatePolls < ActiveRecord::Migration
  def change
    create_table :polls do |t|
      t.string :questionmain
      t.string :oneanswer
      t.string :twoanswer
      t.string :threeanswer
      t.string :fouranswer

      t.timestamps
    end
  end
end
