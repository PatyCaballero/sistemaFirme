class RemoveCantDisponibleFromProducto < ActiveRecord::Migration[5.1]
  def change
  		remove_column :productos, :cantidadDisponible, :integer
  end
end
