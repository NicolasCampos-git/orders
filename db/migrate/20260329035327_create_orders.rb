class CreateOrders < ActiveRecord::Migration[8.1]
  def change
    create_table :orders do |t|
      t.string :client
      t.string :address
      t.float :total
      t.string :pay_method

      t.timestamps
    end
  end
end
