class CreateAsignarPuestos < ActiveRecord::Migration[5.1]
  def change
    create_table :asignar_puestos do |t|
      t.integer :asignarId
      t.string :puesto
      t.string :direccion
      t.string :turno
      t.time :horaEntrada
      t.time :horaSalida

      t.timestamps
    end
  end
end
