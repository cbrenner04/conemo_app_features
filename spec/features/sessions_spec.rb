# filename: ./spec/features/sessions_spec.rb

# require content
Dir['./lib/content/*.rb'].each { |file| require file }

describe 'An authorized user' do
  before(:all) do
    android_native.navigate_to_date_time
    android_native.toggle_auto_date_time
    android_native.increment_date_by(44)
    android_native.return_to_app
  end

  after(:all) do
    android_native.navigate_to_date_time
    android_native.toggle_auto_date_time
  end

  it 'navigates to the session menu' do
    session.open
    wait { driver.page_source.include? session_1.title }
  end

  it 'completes the first session' do
    session.open

    session_1.start
    session.assert_navigation_is_available

    6.times { session.click_next }

    session_1.click_play
    sleep(3)
    session_1.click_play
    session.click_next

    session_1.open_dropdown
    wait { session.choose_response }
    session.submit_response

    2.times { session.click_next }

    session.return_to_home_page
    home.assert_on_page
  end

  it 'completes the second session' do
    session.open

    session_2.start
    session.assert_navigation_is_available

    4.times { session.click_next }

    session.open_dropdown
    session.choose_response
    session.submit_response

    session.click_next
    session.return_to_home_page
    home.assert_on_page
  end

  it 'completes the third session' do
    session.open

    session.scroll_to_and_start(session_3)

    session.click_next

    session.open_dropdown
    session_3.choose_item

    session.click_next

    session.return_to_home_page
    home.assert_on_page
  end

  it 'completes the fourth session' do
    session.open

    session.scroll_to_and_start(session_4)
    session.click_next

    session.open_dropdown
    sleep(1)
    session.choose_response
    session.submit_response

    session.return_to_home_page
    home.assert_on_page
  end

  it 'completes the fifth session' do
    session.open

    session.scroll_to_and_start(session_5)

    4.times { session.click_next }

    session.open_dropdown
    session.choose_response
    session.submit_response

    session.click_next
    session.return_to_home_page
    home.assert_on_page
  end

  it 'completes the sixth session' do
    session.open

    session.scroll_to_and_start(session_6)

    3.times { session.click_next }

    session.open_dropdown
    session_6.choose_item

    session.click_next
    sleep(1)
    session.return_to_home_page
    home.assert_on_page
  end

  it 'completes the seventh session' do
    session.open

    session.scroll_to_and_start(session_7)

    session.click_play
    sleep(3)
    session.click_play

    session.click_next
    session_7.open_dropdown
    session.choose_response
    session.submit_response

    session.click_next
    session_7.open_datepicker
    session_7.set_picker
    session_7.open_timepicker
    session_7.set_picker

    session.return_to_home_page
    home.assert_on_page
  end

  it 'completes the eighth session' do
    session.open

    session.scroll_to_and_start(session_8)

    2.times { session.click_next }

    session.return_to_home_page
    home.assert_on_page
  end

  it 'completes the ninth session' do
    session.open

    session.scroll_to_and_start(session_9)

    2.times { session.click_next }

    session.return_to_home_page
    home.assert_on_page
  end

  it 'completes the tenth session' do
    session.open

    session.scroll_to_and_start(session_10)

    3.times { session.click_next }

    session.open_dropdown
    session_10.choose_item
    session_10.open_datepicker
    session_10.set_picker
    session_10.open_timepicker
    session_10.set_picker

    session.return_to_home_page
    home.assert_on_page
  end

  it 'completes the eleventh session' do
    session.open

    session.scroll_to_and_start(session_11)

    session.click_next

    session.return_to_home_page
    home.assert_on_page
  end

  it 'completes the twelfth session' do
    session.open

    session.scroll_to_and_start(session_12)
    session.assert_navigation_is_available

    2.times { session.click_next }

    session.return_to_home_page
    home.assert_on_page
  end

  it 'completes the thirteenth session' do
    session.open

    session.scroll_to_and_start(session_13)

    3.times { session.click_next }

    session.open_dropdown
    session_13.choose_item

    session.click_next
    session_13.open_datepicker
    session_13.set_picker
    session_13.open_timepicker
    session_13.set_picker

    session.return_to_home_page
    home.assert_on_page
  end

  it 'completes the fourteenth session' do
    session.open

    session.scroll_to_and_start(session_14)

    session.click_play
    sleep(3)
    session.click_play

    2.times { session.click_next }

    session_14.enter_text('testing')
    driver.hide_keyboard

    session_14.open_datepicker
    session_14.set_picker
    session_14.open_timepicker
    session_14.set_picker

    session.return_to_home_page
    home.assert_on_page
  end

  it 'completes the fifteenth session' do
    session.open

    session.scroll_to_and_start(session_15)

    session.return_to_home_page
    home.assert_on_page
  end

  it 'completes the sixteenth session' do
    session.open

    session.scroll_to_and_start(session_16)

    3.times { session.click_next }

    session.click_play
    sleep(3)
    session.click_play

    session.return_to_home_page
    home.assert_on_page
  end

  it 'completes the seventeenth session' do
    session.open

    session.scroll_to_and_start(session_17)

    2.times { session.click_next }

    session.return_to_home_page
    home.assert_on_page
  end

  it 'completes the last session' do
    session.open

    session.scroll_to_and_start(session_18)

    4.times { session.click_next }
    session.return_to_home_page
    home.assert_on_page
  end

  it 'sees all sessions have been read' do
    session.open
    expect(driver.page_source).to_not include('No leído')
  end
end
