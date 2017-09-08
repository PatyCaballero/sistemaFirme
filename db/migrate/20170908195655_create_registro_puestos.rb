class CreateRegistroPuestos < ActiveRecord::Migration[5.1]
  def change
    create_table :registro_puestos do |t|
      t.string :nombrePuesto
      t.string :direccion
      t.string :guardia
      t.string :turno
      t.time :horaEntrada
      t.time :horaSalida
      t.date :desde
      t.date :hasta

      t.timestamps
    end
  end
end
