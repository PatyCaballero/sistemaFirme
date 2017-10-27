class AgregarIdCategoriaEnProductoss < ActiveRecord::Migration[5.1]
  def change
  	add_column :productos, :categoria_id, :integer
  	add_foreign_key(:productos, :categorias)
  end
end
