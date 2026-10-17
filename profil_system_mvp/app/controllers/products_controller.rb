class ProductsController < ApplicationController
  def index
    @categories = Category.all
    @products = Product.includes(:category)

    if params[:category_id].present?
      @products = @products.where(category_id: params[:category_id])
    end

    if params[:max_price].present?
      @products = @products.where("price <= ?", params[:max_price])
    end
  end

  def show
    @product = Product.find(params[:id])
  end
end