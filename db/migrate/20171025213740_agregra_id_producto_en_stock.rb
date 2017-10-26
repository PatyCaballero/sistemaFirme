class AgregraIdProductoEnStock < ActiveRecord::Migration[5.1]
  def change
  	add_column :stock, :producto_id, :integer
  	add_foreign_key(:stock, :productos)
  end
end
