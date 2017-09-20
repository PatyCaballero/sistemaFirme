class Calendario < ApplicationRecord
	validates :diasTrabajados, presence: true

	belongs_to :regis_guardium

	has_many :puesto_registro
	has_many :lista_calendario
	has_many :reporte
end
