class CreateCalendarios < ActiveRecord::Migration[5.1]
  def change
    create_table :calendarios do |t|
      t.string :diasTrabajados

      t.timestamps
    end
  end
end
