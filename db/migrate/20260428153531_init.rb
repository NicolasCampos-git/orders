class Init < ActiveRecord::Migration[8.1]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.decimal :price, precision: 10, scale: 2
      t.integer :stock
      t.timestamps
    end

    create_table :orders do |t|
      t.decimal :total, precision: 10, scale: 2, default: 0.0
      t.timestamps
    end

    create_table :order_details do |t|
      t.references :order, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true
      t.integer :quantity, default: 1
      t.decimal :unit_price, precision: 10, scale: 2
    end
  end
end

