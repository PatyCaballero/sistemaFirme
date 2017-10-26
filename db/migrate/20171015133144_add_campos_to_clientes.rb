class AddCamposToClientes < ActiveRecord::Migration[5.1]
  def change
    add_column :clientes, :email, :string
    add_column :clientes, :gerente, :string
    add_column :clientes, :rubro, :string
    add_column :clientes, :sucursales, :string
    add_column :clientes, :descripcion, :string
    add_column :clientes, :fechaInicio, :date
  end
end
