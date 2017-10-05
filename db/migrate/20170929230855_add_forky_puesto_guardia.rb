class AddForkyPuestoGuardia < ActiveRecord::Migration[5.1]
  def change
  	add_column :puestos, :regis_guardiu_id, :integer
  	add_foreign_key(:puestos, :regis_guardia)
  end
end
