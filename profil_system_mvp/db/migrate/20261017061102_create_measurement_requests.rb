class CreateMeasurementRequests < ActiveRecord::Migration[7.2]
  def change
    create_table :measurement_requests do |t|
      t.string :client_name
      t.string :phone
      t.string :address
      t.date :preferred_date
      t.string :status

      t.timestamps
    end
  end
end
