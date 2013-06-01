class CreateObjetos < ActiveRecord::Migration
  def change
    create_table :objetos do |t|
      t.string :nome
      t.references :local

      t.timestamps
    end
    add_index :objetos, :local_id
  end
end
