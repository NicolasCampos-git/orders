class Product < ApplicationRecord
  # El nombre es obligatorio con un rango.
  validates :name, presence: true, length: { minimum: 2, maximum: 128 }
  # La descripcion es opcional con una longitud maxima.
  validates :description, length: { maximum: 256 }
  # El precio solo permite numeros positivos.
  validates :price, presence: true, numericality: { greater_than: 0 }
  # El stock solo permite enteros positivos.
  validates :stock, presence: true, numericality: { only_integer: true, greater_than: 0 }
  has_many :detail_orders
end
