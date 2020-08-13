json.extract! driver_log, :id, :date, :trip_number, :start_odometer, :end_odometer, :miles, :created_at, :updated_at
json.url driver_log_url(driver_log, format: :json)
