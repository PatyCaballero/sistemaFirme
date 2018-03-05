class AddCampoCantidadToProductoPuesto < ActiveRecord::Migration[5.1]
  def change
  	add_column :producto_puestos, :cantidadAsignada, :integer
  end
end
