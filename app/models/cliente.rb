class Cliente < ApplicationRecord

	#validates :nombre, :num_ruc, :telefono, :direccion, presence: true

	has_many :puestos

	#paginacion
	self.per_page = 10
end
