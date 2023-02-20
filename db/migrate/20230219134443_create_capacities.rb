class CreateCapacities < ActiveRecord::Migration[6.0]
  def change
    create_table :capacities do |t|
      t.integer :client_number,null: false
      t.string :client_name,null: false
      t.integer :capacity,null: false
      t.text :remarks
      t.timestamps
    end
  end
end
