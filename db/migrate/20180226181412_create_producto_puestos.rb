class CreateProductoPuestos < ActiveRecord::Migration[5.1]
  def change
    create_table :producto_puestos do |t|

      t.timestamps
    end
  end
end
