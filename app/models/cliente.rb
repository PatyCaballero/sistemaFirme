class Cliente < ApplicationRecord

	validates :nombre, :num_ruc, :telefono, :direccion, :estado, presence: true

	has_many :puesto

	#paginacion
	self.per_page = 10
end
