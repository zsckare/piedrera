class AddFechaToLiquidation < ActiveRecord::Migration
  def change
    add_column :liquidations, :fecha, :date
  end
end
