# filename: ./spec/features/notifications_spec.rb

# define method used in these tests
def update_date_and_open_notification(day, title)
  notifications.update_date_and_navigate_to_notifications(day)
  notifications.open_notification(title)
  sleep(1)
  expect(driver.page_source).to include(title)
end

# these are just proof of concept at the moment
describe 'An authorized user' do
  before(:all) do
    # start_driver
    # configure_participant('test')
    notifications.clear_notifications
    navigate_to_date_time
    toggle_auto_date_time
  end

  after(:all) do
    navigate_to_date_time
    toggle_auto_date_time
    # driver_quit
  end

  it 'changes the date to day 3, selects first notification' do
    update_date_and_open_notification(3, session_2.title)
  end

  it 'changes the date to day 6, selects second notification' do
    update_date_and_open_notification(6, session_3.title)
  end

  it 'changes the date to day 8, selects third notification' do
    update_date_and_open_notification(8, session_4.title)
  end

  it 'changes the date to day 10, selects fourth notification' do
    update_date_and_open_notification(10, session_5.title)
  end

  it 'changes the date to day 13, selects fifth notification' do
    update_date_and_open_notification(13, session_6.title)
  end

  it 'changes the date to day 15, selects sixth notification' do
    update_date_and_open_notification(15, session_7.title)
  end

  it 'changes the date to day 17, selects seventh notification' do
    update_date_and_open_notification(17, session_8.title)
  end

  it 'changes the date to day 20, selects eighth notification' do
    update_date_and_open_notification(20, session_9.title)
  end

  it 'changes the date to day 22, selects ninth notification' do
    update_date_and_open_notification(22, session_10.title)
  end

  it 'changes the date to day 24, selects tenth notification' do
    update_date_and_open_notification(24, session_11.title)
  end

  it 'changes the date to day 27, selects eleventh notification' do
    update_date_and_open_notification(27, session_12.title)
  end

  it 'changes the date to day 29, selects twelfth notification' do
    update_date_and_open_notification(29, session_13.title)
  end

  it 'changes the date to day 31, selects thirteenth notification' do
    update_date_and_open_notification(31, session_14.title)
  end

  it 'changes the date to day 34, selects fourteenth notification' do
    update_date_and_open_notification(34, session_15.title)
  end

  it 'changes the date to day 36, selects fifteenth notification' do
    update_date_and_open_notification(36, session_16.title)
  end

  it 'changes the date to day 38, selects sixteenth notification' do
    update_date_and_open_notification(38, session_17.title)
  end

  it 'changes the date to final day, selects final notification' do
    update_date_and_open_notification(41, session_18.title)
  end
end
