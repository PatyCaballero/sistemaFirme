class AddForkyGuardiaToPuesto1 < ActiveRecord::Migration[5.1]
  def change
  	add_column :puestos, :guardia_id, :integer
  	add_foreign_key(:puestos, :guardias)
  end
end
