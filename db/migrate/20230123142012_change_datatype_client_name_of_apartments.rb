class ChangeDatatypeClientNameOfApartments < ActiveRecord::Migration[6.0]
  def change
    change_column :apartments, :client_name, :string ,null: false
  end
end
