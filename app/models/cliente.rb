class Cliente < ApplicationRecord
	validates :cliente, :numRuc, :direccion, :telefono, :estado, presence: true

	belongs_to :puesto_registro

	has_many :presupuesto
end
