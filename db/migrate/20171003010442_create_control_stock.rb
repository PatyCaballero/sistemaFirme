class CreateControlStock < ActiveRecord::Migration[5.1]
  def change
    create_table :control_stock do |t|
      t.date :fecha
      t.integer :cant_x_puesto

      t.timestamps
    end
  end
end
