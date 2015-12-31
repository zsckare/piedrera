class CreateTrucks < ActiveRecord::Migration
  def change
    create_table :trucks do |t|
      t.string :numero
      t.references :titular, index: true

      t.timestamps null: false
    end
    add_foreign_key :trucks, :titulars
  end
end
