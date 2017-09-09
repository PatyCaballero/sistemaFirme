class CreateClientes < ActiveRecord::Migration[5.1]
  def change
    create_table :clientes do |t|
      t.string :cliente
      t.integer :numRuc
      t.string :direccion
      t.integer :telefono
      t.string :estado

      t.timestamps
    end
  end
end
