class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.string :order_number,null: false
      t.string :status,null: false
      t.date :order_date,null: false
      t.date :deadline_date,null: false
      t.integer :delay_days
      t.references :apartment, null: false, foreign_key: true
      t.timestamps
    end
  end
end
