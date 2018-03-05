class CreatePresupuestooos < ActiveRecord::Migration[5.1]
  def change
    create_table :presupuestooos do |t|
      t.date :fecha
      t.boolean :turno
      t.integer :cantHora
      t.integer :cantGuardia
      t.string :montoMensual

      t.timestamps
    end
  end
end
