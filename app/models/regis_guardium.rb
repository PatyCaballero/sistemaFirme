class RegisGuardium < ApplicationRecord
	validates :nombre, :apellido, :numDocumento, :direccion, :telefono,  presence: true
	has_many :puesto_registro
	has_many :calendario

	self.per_page = 10
end
