class Puesto < ApplicationRecord
 
	
	#validates :direccion, :turno, :hora_entrada, :hora_salida, :cliente_id, :regis_guardium_id, presence: true


	belongs_to :cliente
	#belongs_to :regis_guardium


	has_many :reportes
	has_many :puesto_puestos
	accepts_nested_attributes_for  :puesto_puestos, allow_destroy: true
	
	
	
	#Paginacion
	self.per_page = 10 
end
