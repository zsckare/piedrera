class CreateTurnos < ActiveRecord::Migration
  def change
    create_table :turnos do |t|
      t.string :nombre

      t.timestamps null: false
    end
  end
end
