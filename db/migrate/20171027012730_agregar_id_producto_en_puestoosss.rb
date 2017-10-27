class AgregarIdProductoEnPuestoosss < ActiveRecord::Migration[5.1]
  def change
  	add_column :puestos, :producto_id, :integer
  	add_foreign_key(:puestos, :productos)
  end
end
