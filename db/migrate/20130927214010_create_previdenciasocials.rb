class CreatePrevidenciasocials < ActiveRecord::Migration
  def change
    create_table :previdenciasocials do |t|
      t.text :content

      t.timestamps
    end
  end
end
