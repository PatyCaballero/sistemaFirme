class CambiarFechaToReporte < ActiveRecord::Migration[5.1]
  def change
  	remove_column :reportes, :horaEntrada, :time
  	add_column :reportes, :horaEntrada, :timestamp

  	remove_column :reportes, :horaSalida, :time
  	add_column :reportes, :horaSalida, :timestamp
  end
end
