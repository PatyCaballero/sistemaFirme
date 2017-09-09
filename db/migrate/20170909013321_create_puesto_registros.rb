class CreatePuestoRegistros < ActiveRecord::Migration[5.1]
  def change
    create_table :puesto_registros do |t|
      t.string :puestoNombre
      t.string :direccion
      t.string :turno
      t.time :horaEntrada
      t.time :horaSalida

      t.timestamps
    end
  end
end
