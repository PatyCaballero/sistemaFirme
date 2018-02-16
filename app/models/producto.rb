class Producto < ApplicationRecord
	belongs_to :categoria
	has_many :puestos 
	#belongs_to :puesto

	#accepts_nested_attributes_for  :puesto
end 
