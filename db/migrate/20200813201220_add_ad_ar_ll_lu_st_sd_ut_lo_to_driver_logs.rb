class AddAdArLlLuStSdUtLoToDriverLogs < ActiveRecord::Migration[6.0]
  def change
    add_column :driver_logs, :ad, :integer
    add_column :driver_logs, :ar, :integer
    add_column :driver_logs, :ll, :integer
    add_column :driver_logs, :lu, :integer
    add_column :driver_logs, :st, :integer
    add_column :driver_logs, :sd, :integer
    add_column :driver_logs, :ut, :integer
    add_column :driver_logs, :lo, :integer
  end
end
