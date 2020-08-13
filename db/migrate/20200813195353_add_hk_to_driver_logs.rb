class AddHkToDriverLogs < ActiveRecord::Migration[6.0]
  def change
    add_column :driver_logs, :hk, :integer
  end
end
