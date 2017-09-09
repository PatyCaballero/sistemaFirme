class CreateListaCalendarios < ActiveRecord::Migration[5.1]
  def change
    create_table :lista_calendarios do |t|
      t.integer :sueldo

      t.timestamps
    end
  end
end
