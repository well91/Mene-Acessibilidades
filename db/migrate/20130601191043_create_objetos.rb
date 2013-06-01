class CreateObjetos < ActiveRecord::Migration
  def change
    create_table :objetos do |t|
      t.string :nome
      t.references :local
      t.references :categoria

      t.timestamps
    end
    add_index :objetos, :local_id
    add_index :objetos, :categoria_id
  end
end
