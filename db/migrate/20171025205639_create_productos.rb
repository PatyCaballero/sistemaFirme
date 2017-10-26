class CreateProductos < ActiveRecord::Migration[5.1]
  def change
    create_table :productos do |t|
      t.string :nomProducto
      t.string :caracteristica

      t.timestamps
    end
  end
end
