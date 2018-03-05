class AddForkyGuardiaToPuesto < ActiveRecord::Migration[5.1]
  def change
  	add_column :puesto_puestos, :puesto_id, :integer
  	add_foreign_key(:puesto_puestos, :puestos)

  	add_column :puesto_puestos, :guardia_id, :integer
  	add_foreign_key(:puesto_puestos, :guardias)
  end
end
