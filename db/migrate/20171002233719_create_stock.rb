class CreateStock < ActiveRecord::Migration[5.1]
  def change
    create_table :stock do |t|
      t.string :producto
      t.integer :cantidad
      t.string :descripcion

      t.timestamps
    end
  end
end
