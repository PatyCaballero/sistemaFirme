class CreateGuardias < ActiveRecord::Migration[5.1]
  def change
    create_table :guardias do |t|
      t.string :nombre
      t.string :apellido
      t.integer :numDocumento
      t.string :direccion
      t.string :telefono
      t.date :fechaNacimiento
      t.string :nacionalidad
      t.string :estadoCivil
      t.integer :edad
      t.string :grupoSanguineo
      t.string :estudios
      t.string :nombrePadre
      t.string :nombreMadre
      t.string :direccionAlternativo
      t.string :telUrgencia
      t.date :fechaIngreso
      t.string :sueldoInicial
      t.string :observacion

      t.timestamps
    end
  end
end
