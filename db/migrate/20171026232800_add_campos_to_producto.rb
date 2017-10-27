class AddCamposToProducto < ActiveRecord::Migration[5.1]
  def change
    add_column :productos, :identificador, :string
    add_column :productos, :cantidad, :integer
  end
end
