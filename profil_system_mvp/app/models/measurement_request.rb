class MeasurementRequest < ApplicationRecord
  validates :client_name, :phone, :address, :preferred_date, presence: true
end