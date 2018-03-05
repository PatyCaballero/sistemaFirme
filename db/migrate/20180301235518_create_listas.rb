class CreateListas < ActiveRecord::Migration[5.1]
  def change
    create_table :listas do |t|

      t.timestamps
    end
  end
end
