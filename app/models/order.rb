class Order < ApplicationRecord
  has_many :detail_orders, dependent: :destroy
  has_many :products, through: :detail_orders

  
end
