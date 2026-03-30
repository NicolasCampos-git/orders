class AhoraSiRelaciones < ActiveRecord::Migration[8.1]
  def change
    add_reference :detail_orders, :order, foreign_key: true
    add_reference :detail_orders, :product, foreign_key: true
  end
end
