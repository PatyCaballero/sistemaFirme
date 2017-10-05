class AddEstadoToRegisGuardia < ActiveRecord::Migration[5.1]
  def change
    add_column :regis_guardia, :estado, :boolean
  end
end
