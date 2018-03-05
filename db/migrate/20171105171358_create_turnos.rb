class CreateTurnos < ActiveRecord::Migration[5.1]
  def change
    create_table :turnos do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
