class CreateDireitoshumanos < ActiveRecord::Migration
  def change
    create_table :direitoshumanos do |t|
      t.text :content

      t.timestamps
    end
  end
end
