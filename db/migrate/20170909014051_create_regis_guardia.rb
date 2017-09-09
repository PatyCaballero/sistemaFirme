class CreateRegisGuardia < ActiveRecord::Migration[5.1]
  def change
    create_table :regis_guardia do |t|
      t.string :nombre
      t.string :apellido
      t.integer :numDocumento
      t.string :direccion
      t.integer :telefono
      t.string :fechaNacimiento

      t.timestamps
    end
  end
end
