class CreateDiretorioestaduals < ActiveRecord::Migration
  def change
    create_table :diretorioestaduals do |t|
      t.text :content

      t.timestamps
    end
  end
end
