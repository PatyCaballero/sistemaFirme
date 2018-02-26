class Guardia < ApplicationRecord
	has_many :puesto_puestos


	self.per_page = 10
end
