class Reporte < ApplicationRecord
	#validates :horaEntrada, :horaSalida, :novedad, presence: true

	#belongs_to :calendario
	belongs_to :puesto
	#belongs_to :cliente
	#belongs_to :regis_guardia
end
