class PresupuestoCreate < ApplicationRecord
	validates :fecha, :turno, :cantHora, :cantGuardia, :armamento, :presence true

	belongs_to :cliente
end
