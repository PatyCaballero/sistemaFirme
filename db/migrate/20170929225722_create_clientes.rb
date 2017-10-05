class CreateClientes < ActiveRecord::Migration[5.1]
  def change
    create_table :clientes do |t|
      t.string :nombre
      t.string :num_ruc
      t.string :telefono
      t.string :direccion
      t.boolean :estado

      t.timestamps
    end
  end
end
