class CreateTitulars < ActiveRecord::Migration
  def change
    create_table :titulars do |t|
      t.string :nombre
      t.string :paterno
      t.string :materno

      t.timestamps null: false
    end
  end
end
