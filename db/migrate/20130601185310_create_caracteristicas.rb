class CreateCaracteristicas < ActiveRecord::Migration
  def change
    create_table :caracteristicas do |t|
      t.string :nome
      t.references :categoria

      t.timestamps
    end
    add_index :caracteristicas, :categoria_id
  end
end
