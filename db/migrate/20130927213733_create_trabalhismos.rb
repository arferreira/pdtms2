class CreateTrabalhismos < ActiveRecord::Migration
  def change
    create_table :trabalhismos do |t|
      t.text :content

      t.timestamps
    end
  end
end
