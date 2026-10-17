class ConfiguratorsController < ApplicationController
  def show
    @default_params = {
      width: 1400,
      height: 1300,
      profile_system: "rehau_70",
      glass_type: "double",
      hardware: "siegenia",
      with_installation: "1"
    }
    @initial_price = WindowPriceCalculator.calculate(@default_params)
  end

  def calculate
    price = WindowPriceCalculator.calculate(calculator_params)
    render json: { price: price }
  end

  def add_to_cart
    price = WindowPriceCalculator.calculate(calculator_params)
    details = {
      width: params[:width],
      height: params[:height],
      profile: params[:profile_system],
      glass: params[:glass_type],
      installation: params[:with_installation] == "1"
    }

    CartItem.create!(
      title: "Вікно індивідуальне #{params[:width]}x#{params[:height]} мм",
      price: price,
      quantity: 1,
      configuration_details: details
    )

    redirect_to cart_items_path, notice: "Конфігурацію додано до кошика!"
  end

  private

  def calculator_params
    params.permit(:width, :height, :profile_system, :glass_type, :hardware, :with_installation)
  end
end 