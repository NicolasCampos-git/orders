class Order < ApplicationRecord
  has_many :detail_orders, dependent: :destroy
end
