class CartItemsController < ApplicationController
  def index
    @cart_items = CartItem.all
    @total_sum = @cart_items.sum(&:total_price)
  end

  def create
    product = Product.find(params[:product_id])
    CartItem.create!(product: product, title: product.name, price: product.price, quantity: 1)
    redirect_to cart_items_path, notice: "Товар додано до замовлення!"
  end

  def destroy
    CartItem.find(params[:id]).destroy
    redirect_to cart_items_path, notice: "Позицію вилучено з кошика."
  end
end