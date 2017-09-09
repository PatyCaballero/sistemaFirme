class CreateReportes < ActiveRecord::Migration[5.1]
  def change
    create_table :reportes do |t|
      t.time :horaEntrada
      t.time :horaSalida
      t.string :estado
      t.string :novedad

      t.timestamps
    end
  end
end
