class AddForkyClienteAPuesto < ActiveRecord::Migration[5.1]
  def change
  	add_column :puestos, :cliente_id, :integer
  	add_foreign_key(:puestos, :clientes)
  end
end
