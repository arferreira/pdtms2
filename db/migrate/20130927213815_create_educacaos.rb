class CreateEducacaos < ActiveRecord::Migration
  def change
    create_table :educacaos do |t|
      t.text :content

      t.timestamps
    end
  end
end
