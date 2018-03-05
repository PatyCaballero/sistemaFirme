class AgregarIdPuestoEnReportes < ActiveRecord::Migration[5.1]
  def change
  	add_column :reportes, :puesto_id, :integer
  	add_foreign_key(:reportes, :puestos)
  end
end
