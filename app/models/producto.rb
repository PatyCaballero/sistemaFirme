class Producto < ApplicationRecord
	belongs_to :categoria
	has_many :puestos
end 
