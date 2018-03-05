class AgregarIdTurnoEnPresupuestooo < ActiveRecord::Migration[5.1]
  def change
  	add_column :presupuestooos, :turno_id, :integer
  	add_foreign_key(:presupuestooos, :turnos)
  end
end
