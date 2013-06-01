class CreateDetalheInspecoes < ActiveRecord::Migration
  def change
    create_table :detalhe_inspecoes do |t|
      t.boolean :aprovada
      t.references :caracteristica
      t.references :inspecao

      t.timestamps
    end
    add_index :detalhe_inspecoes, :caracteristica_id
    add_index :detalhe_inspecoes, :inspecao_id
  end
end
