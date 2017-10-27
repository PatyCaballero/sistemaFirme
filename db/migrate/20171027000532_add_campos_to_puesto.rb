class AddCamposToPuesto < ActiveRecord::Migration[5.1]
  def change
    add_column :puestos, :fechaInicio, :date
    add_column :puestos, :fechaFin, :date
  end
end
