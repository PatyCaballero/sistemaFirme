class RemovePuestoIdDeProducto < ActiveRecord::Migration[5.1]
  def change
  	remove_column :productos, :puesto_id, :integer
  end
end
