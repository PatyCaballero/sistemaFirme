class AgregarIdPuestoEnProducto < ActiveRecord::Migration[5.1]
  def change
  	add_column :productos, :puesto_id, :integer
  	add_foreign_key(:productos, :puestos)
  end
end
