# filename: ./spec/features/notifications_spec.rb

# these are just proof of concept at the moment
describe 'An authorized user' do
  it 'open tray, clear notifications, visit Purple Robot, return to app' do
    # open tray
    driver.open_notifications

    # rescue exception in case notifications have been cleared
    begin
      find('com.android.systemui:id/clear_all_button').click
    rescue Selenium::WebDriver::Error::NoSuchElementError
    end
    sleep(2)

    # visit Purple Robot
    driver.open_notifications
    text('Application Status').click

    # open recent apps
    driver.press_keycode 187
    sleep(2)

    # select first app in recent apps
    app_icon = tags('android.widget.ImageView')
    app_icon[0].click
    sleep(2)

    # this will error out due to app showing raw angular on resume
    begin
      home.assert_on_page
    rescue Selenium::WebDriver::Error::TimeOutError
    end
  end

  it 'changes the date through system settings' do
    # navigate to home page
    driver.press_keycode 3
    sleep(2)

    # select 'Settings' - NOTE: my device has 'Settings' on the home page
    text('Settings').click

    # scroll to and select 'Date and Time'
    begin
      tries ||= 8
      text('Date and time').click
    rescue Selenium::WebDriver::Error::NoSuchElementError
      Appium::TouchAction
        .swipe(start_x: 630, start_y: 1610,
               end_x: 540, end_y: 1090, duration: 300)
      retry unless (tries -= 1).zero?
    end

    # turn off automatic date and time
    text('Automatic date and time').click

    # open date picker
    text('Set date').click

    # set date ahead 7 days, this will break if that rolls into next month
    7.times do
      button = tags('android.widget.ImageButton')
      button[2].click
      sleep(1)
    end

    # submit
    last_button.click

    # assert date is set to a week from now
    date_1 = Date.today + 7
    text("#{date_1.strftime('%m/%d/%Y')}")

    # reset automatic date and time
    text('Automatic date and time').click
  end
end
