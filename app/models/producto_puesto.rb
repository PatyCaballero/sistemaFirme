class ProductoPuesto < ApplicationRecord
	belongs_to :puesto
	belongs_to :producto
end
