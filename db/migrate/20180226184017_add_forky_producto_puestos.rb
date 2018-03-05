class AddForkyProductoPuestos < ActiveRecord::Migration[5.1]
  def change
  	add_column :producto_puestos, :puesto_id, :integer
  	add_foreign_key(:producto_puestos, :puestos)

  	add_column :producto_puestos, :producto_id, :integer
  	add_foreign_key(:producto_puestos, :productos)
  end
end
