class MeasurementRequestsController < ApplicationController
  def new
    @request = MeasurementRequest.new
  end

  def create
    @request = MeasurementRequest.new(request_params)
    @request.status = "нове"
    if @request.save
      redirect_to root_path, notice: "Заявку на замір прийнято! Менеджер зв'яжеться з вами."
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def request_params
    params.require(:measurement_request).permit(:client_name, :phone, :address, :preferred_date)
  end
end