class Producto < ApplicationRecord
	belongs_to :categoria
	
	#belongs_to :puesto

	has_many :producto_puestos



end 
