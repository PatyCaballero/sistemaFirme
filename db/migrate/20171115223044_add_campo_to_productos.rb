class AddCampoToProductos < ActiveRecord::Migration[5.1]
  def change
    add_column :productos, :cantidadDisponible, :string
  end
end
