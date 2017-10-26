class AddCampoToStock < ActiveRecord::Migration[5.1]
  def change
    add_column :stock, :stock, :string
  end
end
