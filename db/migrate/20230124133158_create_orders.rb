class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.string :order_number,null: false
      t.string :status,null: false
      t.date :order_date,null: false
      t.integer :delay_days,null: false
      t.timestamps
    end
  end
end
