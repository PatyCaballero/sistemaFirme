class Cliente < ApplicationRecord

	#validates :nombre, :num_ruc, :telefono, :direccion, presence: true

	has_many :puestos

	#has_many :reportes

	#paginacion
	self.per_page = 10
end
