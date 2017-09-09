class CreatePresupuestoCreates < ActiveRecord::Migration[5.1]
  def change
    create_table :presupuesto_creates do |t|
      t.string :fecha
      t.string :turno
      t.integer :cantHora
      t.integer :cantGuardia
      t.string :armamento
      t.integer :montoMensual

      t.timestamps
    end
  end
end
