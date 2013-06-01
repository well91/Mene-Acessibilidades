class CreateInspecoes < ActiveRecord::Migration
  def change
    create_table :inspecoes do |t|
      t.date :data
      t.integer :status
      t.references :inspetor
      t.references :objeto

      t.timestamps
    end
    add_index :inspecoes, :inspetor_id
    add_index :inspecoes, :objeto_id
  end
end
