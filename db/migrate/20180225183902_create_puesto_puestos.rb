class CreatePuestoPuestos < ActiveRecord::Migration[5.1]
  def change
    create_table :puesto_puestos do |t|

      t.timestamps
    end
  end
end
