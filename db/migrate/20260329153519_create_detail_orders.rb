class CreateDetailOrders < ActiveRecord::Migration[8.1]
  def change
    create_table :detail_orders do |t|
      t.integer :quantity
      t.float :subtotal

      t.timestamps
    end
  end
end
