class Reporte < ApplicationRecord
	validates :horaEntrada, :horaSalida, :estado, :novedad, presence: true

	belongs_to :calendario
end
