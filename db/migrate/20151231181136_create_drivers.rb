class CreateDrivers < ActiveRecord::Migration
  def change
    create_table :drivers do |t|
      t.string :nombre
      t.string :paterno
      t.string :materno
      t.string :sindical

      t.timestamps null: false
    end
  end
end
