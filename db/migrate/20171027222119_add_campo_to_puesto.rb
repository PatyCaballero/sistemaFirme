class AddCampoToPuesto < ActiveRecord::Migration[5.1]
  def change
    add_column :puestos, :cantidad, :integer
  end
end
