require "application_system_test_case"

class DriverLogsTest < ApplicationSystemTestCase
  setup do
    @driver_log = driver_logs(:one)
  end

  test "visiting the index" do
    visit driver_logs_url
    assert_selector "h1", text: "Driver Logs"
  end

  test "creating a Driver log" do
    visit driver_logs_url
    click_on "New Driver Log"

    fill_in "Date", with: @driver_log.date
    fill_in "End odometer", with: @driver_log.end_odometer
    fill_in "Miles", with: @driver_log.miles
    fill_in "Start odometer", with: @driver_log.start_odometer
    fill_in "Trip number", with: @driver_log.trip_number
    click_on "Create Driver log"

    assert_text "Driver log was successfully created"
    click_on "Back"
  end

  test "updating a Driver log" do
    visit driver_logs_url
    click_on "Edit", match: :first

    fill_in "Date", with: @driver_log.date
    fill_in "End odometer", with: @driver_log.end_odometer
    fill_in "Miles", with: @driver_log.miles
    fill_in "Start odometer", with: @driver_log.start_odometer
    fill_in "Trip number", with: @driver_log.trip_number
    click_on "Update Driver log"

    assert_text "Driver log was successfully updated"
    click_on "Back"
  end

  test "destroying a Driver log" do
    visit driver_logs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Driver log was successfully destroyed"
  end
end
