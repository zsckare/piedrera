class CreateLiquidations < ActiveRecord::Migration
  def change
    create_table :liquidations do |t|
      t.string :camion
      t.references :driver, index: true
      t.string :turno
      t.string :efectivo
      t.string :gastos
      t.string :terreno
      t.string :ahorro
      t.string :otro

      t.timestamps null: false
    end
    add_foreign_key :liquidations, :drivers
  end
end
