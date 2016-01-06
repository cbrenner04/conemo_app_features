# filename: ./spec/features/notifications_spec.rb

# these are just proof of concept at the moment
describe 'An authorized user' do
  before(:all) do
    start_driver
    configure_participant('test')
    driver.open_notifications
    begin
      tries ||= 2
      find('com.android.systemui:id/clear_all_button').click
    rescue Selenium::WebDriver::Error::NoSuchElementError
      retry unless (tries -= 1).zero?
    end
    sleep(1)
  end

  after(:all) do
    toggle_auto_date_time
    driver_quit
  end

  it 'changes the date to day 3, selects first notification' do
    increment_date_by(3)

    driver.open_notifications
    sleep(1)
    notifications.open_first

    wait { expect(driver.page_source).to include session_2.title }
  end

  it 'changes the date to final day, selects final notification' do
    increment_date_by(41)

    driver.open_notifications
    sleep(1)
    notifications.open_last

    wait { expect(driver.page_source).to include session_18.title }
  end
end
