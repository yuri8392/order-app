class CreateApartments < ActiveRecord::Migration[6.0]
  def change
    create_table :apartments do |t|
      t.integer :apartment_number ,null: false
      t.integer :room_number ,null: false
      t.string :postal_code ,null: false
      t.string :address ,null: false
      t.integer :client_number ,null: false
      t.integer :client_name ,null: false
      t.timestamps
    end
  end
end
