class CreatePuestos < ActiveRecord::Migration[5.1]
  def change
    create_table :puestos do |t|
      t.string :direccion
      t.string :turno
      t.time :hora_entrada
      t.time :hora_salida

      t.timestamps
    end
  end
end
