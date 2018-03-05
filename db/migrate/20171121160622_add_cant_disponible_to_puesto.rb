class AddCantDisponibleToPuesto < ActiveRecord::Migration[5.1]
  def change
    add_column :puestos, :cantidadDisponible, :integer
  end
end
