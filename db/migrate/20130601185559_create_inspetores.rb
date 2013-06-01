class CreateInspetores < ActiveRecord::Migration
  def change
    create_table :inspetores do |t|
      t.string :nome

      t.timestamps
    end
  end
end
