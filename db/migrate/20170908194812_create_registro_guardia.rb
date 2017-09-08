class CreateRegistroGuardia < ActiveRecord::Migration[5.1]
  def change
    create_table :registro_guardia do |t|
      t.string :nombre
      t.string :apellido
      t.integer :numCedula
      t.string :direccion
      t.integer :telefono
      t.date :fechaNacimiento
      t.date :fechaInicio

      t.timestamps
    end
  end
end
