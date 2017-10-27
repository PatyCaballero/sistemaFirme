class Puesto < ApplicationRecord

	
	#validates :direccion, :turno, :hora_entrada, :hora_salida, :cliente_id, :regis_guardium_id, presence: true


	belongs_to :cliente
	belongs_to :regis_guardium
	belongs_to :producto

	
	#Paginacion
	self.per_page = 10 
end
