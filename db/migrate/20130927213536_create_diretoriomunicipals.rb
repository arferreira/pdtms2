class CreateDiretoriomunicipals < ActiveRecord::Migration
  def change
    create_table :diretoriomunicipals do |t|
      t.text :content

      t.timestamps
    end
  end
end
