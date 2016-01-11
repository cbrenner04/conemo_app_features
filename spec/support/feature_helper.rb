def configure_participant(id)
  wait { find('Configurar') }
  configuration.enter_id(id)
  driver.hide_keyboard
  configuration.submit
  home.assert_on_page
end

def navigate_to_home_page
  driver.press_keycode 3
  sleep(2)
end

def navigate_to_date_time
  navigate_to_home_page
  # select 'Settings' - NOTE: my device has 'Settings' on the home page
  wait { find('Settings').click }

  # scroll to and select 'Date and Time'
  begin
    tries ||= 8
    find('Date and time').click
  rescue Selenium::WebDriver::Error::NoSuchElementError
    Appium::TouchAction.swipe(start_x: 630, start_y: 1610,
                              end_x: 540, end_y: 1090, duration: 300)
    retry unless (tries -= 1).zero?
  end
end

def toggle_auto_date_time
  # turn off automatic date and time
  find('Automatic date and time').click
end

def increment_date_by(days)
  # open date picker
  find('Set date').click

  # set date ahead
  date_edit = tags('android.widget.EditText')
  date_edit[0].click
  date_1 = Date.today + days
  date_edit[0].send_keys("#{date_1.strftime('%b')}")
  date_edit[1].send_keys("#{date_1.strftime('%d')}")
  date_edit[2].send_keys("#{date_1.strftime('%Y')}")
  driver.hide_keyboard
  find('Set').click

  # assert date is set to correct date
  find("#{date_1.strftime('%m/%d/%Y')}")
end

def return_to_app
  driver.press_keycode 3
  wait { find('CONEMO').click }
  home.assert_on_page
end
