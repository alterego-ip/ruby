class CartItem < ApplicationRecord
  belongs_to :product, optional: true

  def total_price
    (price || 0) * (quantity || 1)
  end
end