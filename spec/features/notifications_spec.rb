# filename: ./spec/features/notifications_spec.rb

# these are just proof of concept at the moment
describe 'An authorized user' do
  before(:all) do
    # configure app
    configuration.enter_id('1234567')
    driver.hide_keyboard
    configuration.submit
    home.assert_on_page
  end

  after(:all) do
    # navigate to home page
    driver.press_keycode 3
    sleep(2)

    # select 'Settings' - NOTE: my device has 'Settings' on the home page
    find('Settings').click

    # scroll to and select 'Date and Time'
    begin
      tries ||= 8
      find('Date and time').click
    rescue Selenium::WebDriver::Error::NoSuchElementError
      Appium::TouchAction
        .swipe(start_x: 630, start_y: 1610,
               end_x: 540, end_y: 1090, duration: 300)
      retry unless (tries -= 1).zero?
    end

    # turn off automatic date and time
    find('Automatic date and time').click
  end

  it 'changes the date to final day, selects final notification' do
    # navigate to home page
    driver.press_keycode 3
    sleep(2)

    # select 'Settings' - NOTE: my device has 'Settings' on the home page
    find('Settings').click

    # scroll to and select 'Date and Time'
    begin
      tries ||= 8
      find('Date and time').click
    rescue Selenium::WebDriver::Error::NoSuchElementError
      Appium::TouchAction
        .swipe(start_x: 630, start_y: 1610,
               end_x: 540, end_y: 1090, duration: 300)
      retry unless (tries -= 1).zero?
    end

    # turn off automatic date and time
    find('Automatic date and time').click

    # open time picker
    find('Set time').click

    # set time to 8:00 AM
    time = tags('android.widget.EditText')
    time[0].click
    driver.press_keycode 15
    time[1].click
    driver.press_keycode 7
    driver.hide_keyboard
    button = tags('android.widget.Button')
    button[0].click
    find('Set').click

    # open date picker
    find('Set date').click

    # set date ahead
    date_edit = tags('android.widget.EditText')
    date_edit[0].click
    date_1 = Date.today + 44
    date_edit[0].send_keys("#{date_1.strftime('%b')}")
    date_edit[1].send_keys("#{date_1.strftime('%d')}")
    date_edit[2].send_keys("#{date_1.strftime('%Y')}")
    driver.hide_keyboard

    # submit
    find('Set').click

    # assert date is set to correct date
    find("#{date_1.strftime('%m/%d/%Y')}")

    # open tray
    driver.open_notifications
    sleep(2)
    text('Sesión final').click

    home.assert_on_page
  end
end
