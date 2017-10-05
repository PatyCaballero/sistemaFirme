class AddEstadoToPuesto < ActiveRecord::Migration[5.1]
  def change
    add_column :puestos, :estado, :boolean
  end
end
