class RegisGuardium < ApplicationRecord
	#validates :nombre, :apellido, :numDocumento, :direccion, :telefono,  presence: true
	

	#has_many :calendario
	
	has_many :puestos

	#has_many :reportes

	self.per_page = 10
end
