class PuestoRegistro < ApplicationRecord
	validates :puestoNombre, :direccion, :turno, :horaEntrada, :horaSalida, presence: true

	belongs_to :regis_guardium

	belongs_to :cliente
	has_many :calendario

	self.per_page = 10
end
