class CreateLocais < ActiveRecord::Migration
  def change
    create_table :locais do |t|
      t.string :nome

      t.timestamps
    end
  end
end
