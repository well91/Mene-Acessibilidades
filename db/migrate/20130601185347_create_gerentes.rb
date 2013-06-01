class CreateGerentes < ActiveRecord::Migration
  def change
    create_table :gerentes do |t|
      t.string :nome

      t.timestamps
    end
  end
end
