require 'test_helper'

class DriverLogsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @driver_log = driver_logs(:one)
  end

  test "should get index" do
    get driver_logs_url
    assert_response :success
  end

  test "should get new" do
    get new_driver_log_url
    assert_response :success
  end

  test "should create driver_log" do
    assert_difference('DriverLog.count') do
      post driver_logs_url, params: { driver_log: { date: @driver_log.date, end_odometer: @driver_log.end_odometer, miles: @driver_log.miles, start_odometer: @driver_log.start_odometer, trip_number: @driver_log.trip_number } }
    end

    assert_redirected_to driver_log_url(DriverLog.last)
  end

  test "should show driver_log" do
    get driver_log_url(@driver_log)
    assert_response :success
  end

  test "should get edit" do
    get edit_driver_log_url(@driver_log)
    assert_response :success
  end

  test "should update driver_log" do
    patch driver_log_url(@driver_log), params: { driver_log: { date: @driver_log.date, end_odometer: @driver_log.end_odometer, miles: @driver_log.miles, start_odometer: @driver_log.start_odometer, trip_number: @driver_log.trip_number } }
    assert_redirected_to driver_log_url(@driver_log)
  end

  test "should destroy driver_log" do
    assert_difference('DriverLog.count', -1) do
      delete driver_log_url(@driver_log)
    end

    assert_redirected_to driver_logs_url
  end
end
