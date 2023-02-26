class CreateNotOrderings < ActiveRecord::Migration[6.0]
  def change
    create_table :not_orderings do |t|
      t.references :apartment, null: false, foreign_key: true
      t.references :capacity, null: false, foreign_key: true
      t.references :order, null: false, foreign_key: true
      t.timestamps
    end
  end
end
