class AddCamposToRegisGuardia < ActiveRecord::Migration[5.1]
  def change
    add_column :regis_guardia, :nacionalidad, :string
    add_column :regis_guardia, :estadoCivil, :string
    add_column :regis_guardia, :edad, :integer
    add_column :regis_guardia, :grupoSanguineo, :string
    add_column :regis_guardia, :estudios, :string
    add_column :regis_guardia, :nombrePadre, :string
    add_column :regis_guardia, :nombreMadre, :string
    add_column :regis_guardia, :direccionAlternativa, :string
    add_column :regis_guardia, :telUrgencia, :string
    add_column :regis_guardia, :fechaIngreso, :date
    add_column :regis_guardia, :sueldoInicial, :string
    add_column :regis_guardia, :observacion, :string
  end
end
