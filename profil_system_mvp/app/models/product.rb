class Product < ApplicationRecord
  belongs_to :category
  validates :name, :sku, :price, presence: true
  validates :price, numericality: { greater_than: 0 }
end