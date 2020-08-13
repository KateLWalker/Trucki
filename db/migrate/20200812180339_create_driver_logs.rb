class CreateDriverLogs < ActiveRecord::Migration[6.0]
  def change
    create_table :driver_logs do |t|
      t.date :date
      t.bigint :trip_number
      t.bigint :start_odometer
      t.bigint :end_odometer
      t.bigint :miles

      t.timestamps
    end
  end
end
