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
    navigate_to_date_time
    toggle_auto_date_time
  end

  after(:all) do
    navigate_to_date_time
    toggle_auto_date_time
    driver_quit
  end

  it 'changes the date to day 3, selects first notification' do
    notifications.update_date_navigate_to_notifications(3)

    notifications.open_first
    sleep(1)
    expect(driver.page_source).to include(session_2.title)
  end

  it 'changes the date to day 6, selects second notification' do
    notifications.update_date_navigate_to_notifications(6)

    notifications.open_second
    sleep(1)
    expect(driver.page_source).to include(session_3.title)
  end

  it 'changes the date to day 8, selects third notification' do
    notifications.update_date_navigate_to_notifications(8)

    notifications.open_third
    sleep(1)
    expect(driver.page_source).to include(session_4.title)
  end

  it 'changes the date to day 10, selects fourth notification' do
    notifications.update_date_navigate_to_notifications(10)

    notifications.open_fourth
    sleep(1)
    expect(driver.page_source).to include(session_5.title)
  end

  it 'changes the date to day 13, selects fifth notification' do
    notifications.update_date_navigate_to_notifications(13)

    notifications.open_fifth
    sleep(1)
    expect(driver.page_source).to include(session_6.title)
  end

  it 'changes the date to day 15, selects sixth notification' do
    notifications.update_date_navigate_to_notifications(15)

    notifications.open_sixth
    sleep(1)
    expect(driver.page_source).to include(session_7.title)
  end

  it 'changes the date to day 17, selects seventh notification' do
    notifications.update_date_navigate_to_notifications(17)

    notifications.open_seventh
    sleep(1)
    expect(driver.page_source).to include(session_8.title)
  end

  it 'changes the date to day 20, selects eighth notification' do
    notifications.update_date_navigate_to_notifications(20)

    notifications.open_eighth
    expect(driver.page_source).to include(session_9.title)
  end

  it 'changes the date to day 22, selects ninth notification' do
    notifications.update_date_navigate_to_notifications(22)

    notifications.open_ninth
    expect(driver.page_source).to include(session_10.title)
  end

  it 'changes the date to day 24, selects tenth notification' do
    notifications.update_date_navigate_to_notifications(24)

    notifications.open_tenth
    sleep(1)
    expect(driver.page_source).to include(session_11.title)
  end

  it 'changes the date to day 27, selects eleventh notification' do
    notifications.update_date_navigate_to_notifications(27)

    notifications.open_eleventh
    sleep(1)
    expect(driver.page_source).to include(session_12.title)
  end

  it 'changes the date to day 29, selects twelfth notification' do
    notifications.update_date_navigate_to_notifications(29)

    notifications.open_twelfth
    sleep(1)
    expect(driver.page_source).to include(session_13.title)
  end

  it 'changes the date to day 31, selects thirteenth notification' do
    notifications.update_date_navigate_to_notifications(31)

    notifications.open_thirteenth
    sleep(1)
    expect(driver.page_source).to include(session_14.title)
  end

  it 'changes the date to day 34, selects fourteenth notification' do
    notifications.update_date_navigate_to_notifications(34)

    notifications.open_fourteenth
    sleep(1)
    expect(driver.page_source).to include(session_15.title)
  end

  it 'changes the date to day 36, selects fifteenth notification' do
    notifications.update_date_navigate_to_notifications(36)

    notifications.open_fifteenth
    sleep(1)
    expect(driver.page_source).to include(session_16.title)
  end

  it 'changes the date to day 38, selects sixteenth notification' do
    notifications.update_date_navigate_to_notifications(38)

    notifications.open_sixteenth
    sleep(1)
    expect(driver.page_source).to include(session_17.title)
  end

  it 'changes the date to final day, selects final notification' do
    notifications.update_date_navigate_to_notifications(41)

    notifications.open_last
    sleep(1)
    expect(driver.page_source).to include(session_18.title)
  end
end
