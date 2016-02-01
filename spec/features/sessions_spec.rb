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
    android_native.toggle_auto_date_time
  end

  it 'navigates to the session menu' do
    session.open
    wait { driver.page_source.include? session_1.title }
  end

  it 'completes the first session' do
    session.open

    session_1.start

    wait do
      content = [session_1_slide_1.line_1, session_1_slide_1.line_2,
                 session_1_slide_1.line_3, session_1_slide_2.line_1,
                 session_1_slide_2.line_2, session_1_slide_3.line_1,
                 session_1_slide_3.line_2, session_1_slide_4.line_1,
                 session_1_slide_4.line_2, session_1_slide_5.line_1,
                 session_1_slide_6.line_1, session_1_slide_7.line_1,
                 session_1_slide_8.line_1, session_1_slide_8.line_2,
                 session_1_slide_8.line_3, session_1_slide_9.line_1,
                 session_1_slide_9.line_2, session_1_slide_9.line_3]
      content.each do |c|
        expect(driver.page_source).to include(c)
      end
    end

    6.times { session.click_next }

    session_1.click_play
    sleep(3)
    session_1.click_play
    session.click_next

    session_1.open_dropdown
    wait { session.choose_response }
    session.submit_response

    session.click_next

    session.return_to_home_page
    home.assert_on_page
  end

  it 'completes the second session' do
    session.open

    scroll_to_and_start(session_2, '1 / 6')

    wait do
      content = [session_2_slide_1.line_1, session_2_slide_1.line_2,
                 session_2_slide_1.line_3, session_2_slide_2.line_1,
                 session_2_slide_3.line_1, session_2_slide_3.line_2,
                 session_2_slide_4.line_1, session_2_slide_4.line_2,
                 session_2_slide_5.line_1, session_2_slide_6.line_1,
                 session_2_slide_6.line_2]
      content.each do |c|
        expect(driver.page_source).to include(c)
      end
    end

    4.times { session.click_next }

    session_2.open_dropdown
    session.choose_response
    session.submit_response

    session.click_next
    session.return_to_home_page
    home.assert_on_page
  end

  it 'completes the third session' do
    session.open

    scroll_to_and_start(session_3, '1 / 2')

    wait do
      content = [session_3_slide_1.line_1, session_3_slide_1.line_2,
                 session_3_slide_1.line_3, session_3_slide_2.line_1,
                 session_3_slide_2.line_2]
      content.each do |c|
        expect(driver.page_source).to include(c)
      end
    end

    session.click_next

    session_3.open_dropdown
    # expect(session.first_selection_text).to_not be ''

    session_3.choose_item

    session.return_to_home_page
    home.assert_on_page
  end

  it 'completes the fourth session' do
    session.open

    scroll_to_and_start(session_4, '1 / 2')

    wait do
      content = [session_4_slide_1.line_1, session_4_slide_1.line_2,
                 session_4_slide_2.line_1, session_4_slide_2.line_2,
                 session_4_slide_2.line_3]
      content.each do |c|
        expect(driver.page_source).to include(c)
      end
    end

    session.click_next

    session_4.open_dropdown
    sleep(1)
    session.choose_response
    session.submit_response

    session.return_to_home_page
    home.assert_on_page
  end

  it 'completes the fifth session' do
    session.open

    scroll_to_and_start(session_5, '1 / 6')

    wait do
      content = [session_5_slide_1.line_1, session_5_slide_1.line_2,
                 session_5_slide_2.line_1, session_5_slide_2.line_2,
                 session_5_slide_3.line_1, session_5_slide_3.line_2,
                 session_5_slide_4.line_1, session_5_slide_4.line_2,
                 session_5_slide_5.line_1, session_5_slide_5.line_2,
                 session_5_slide_6.line_1, session_5_slide_6.line_2]
      content.each do |c|
        expect(driver.page_source).to include(c)
      end
    end

    4.times { session.click_next }

    session_5.open_dropdown
    session.choose_response
    session.submit_response

    session.click_next
    session.return_to_home_page
    home.assert_on_page
  end

  it 'completes the sixth session' do
    session.open

    scroll_to_and_start(session_6, '1 / 5')

    wait do
      content = [session_6_slide_1.line_1, session_6_slide_1.line_2,
                 session_6_slide_1.line_3, session_6_slide_2.line_1,
                 session_6_slide_3.line_1, session_6_slide_4.line_1,
                 session_6_slide_4.line_2, session_6_slide_5.line_1,
                 session_6_slide_5.line_2]
      content.each do |c|
        expect(driver.page_source).to include(c)
      end
    end

    3.times { session.click_next }

    session_6.open_dropdown
    # expect(session.first_selection_text).to_not be ''

    session_6.choose_item

    session.click_next
    sleep(1)
    session.return_to_home_page
    home.assert_on_page
  end

  it 'completes the seventh session' do
    session.open

    scroll_to_and_start(session_7, '1 / 3')

    wait do
      content = [session_7_slide_1.line_1, session_7_slide_1.line_2,
                 session_7_slide_2.line_1, session_7_slide_2.line_2,
                 session_7_slide_2.line_3, session_7_slide_3.line_1,
                 session_7_slide_3.line_2]
      content.each do |c|
        expect(driver.page_source).to include(c)
      end
    end

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

    scroll_to_and_start(session_8, '1 / 3')

    wait do
      content = [session_8_slide_1.line_1, session_8_slide_1.line_2,
                 session_8_slide_2.line_1, session_8_slide_3.line_1,
                 session_8_slide_3.line_2]
      content.each do |c|
        expect(driver.page_source).to include(c)
      end
    end

    2.times { session.click_next }

    session.return_to_home_page
    home.assert_on_page
  end

  it 'completes the ninth session' do
    session.open

    scroll_to_and_start(session_9, '1 / 3')

    wait do
      content = [session_9_slide_1.line_1, session_9_slide_1.line_2,
                 session_9_slide_1.line_3, session_9_slide_2.line_1,
                 session_9_slide_2.line_2, session_9_slide_2.line_3,
                 session_9_slide_3.line_1, session_9_slide_3.line_2,
                 session_9_slide_3.line_3]
      content.each do |c|
        expect(driver.page_source).to include(c)
      end
    end

    2.times { session.click_next }

    session.return_to_home_page
    home.assert_on_page
  end

  it 'completes the tenth session' do
    session.open

    scroll_to_and_start(session_10, '1 / 4')

    wait do
      content = [session_10_slide_1.line_1, session_10_slide_1.line_2,
                 session_10_slide_2.line_1, session_10_slide_2.line_2,
                 session_10_slide_3.line_1, session_10_slide_3.line_2,
                 session_10_slide_3.line_3, session_10_slide_4.line_1]
      content.each do |c|
        expect(driver.page_source).to include(c)
      end
    end

    3.times { session.click_next }

    session_10.open_dropdown
    # expect(session.first_selection_text).to_not be ''

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

    scroll_to_and_start(session_11, '1 / 2')

    wait do
      content = [session_11_slide_1.line_1, session_11_slide_1.line_2,
                 session_11_slide_2.line_1, session_11_slide_2.line_2]
      content.each do |c|
        expect(driver.page_source).to include(c)
      end
    end

    session.click_next

    session.return_to_home_page
    home.assert_on_page
  end

  it 'completes the twelfth session' do
    session.open

    scroll_to_and_start(session_12, '1 / 3')

    wait do
      content = [session_12_slide_1.line_1, session_12_slide_1.line_2,
                 session_12_slide_1.line_3, session_12_slide_2.line_1,
                 session_12_slide_3.line_1, session_12_slide_3.line_2]
      content.each do |c|
        expect(driver.page_source).to include(c)
      end
    end

    2.times { session.click_next }

    session.return_to_home_page
    home.assert_on_page
  end

  it 'completes the thirteenth session' do
    session.open

    scroll_to_and_start(session_13, '1 / 5')

    wait do
      content = [session_13_slide_1.line_1, session_13_slide_1.line_2,
                 session_13_slide_1.line_3, session_13_slide_2.line_1,
                 session_13_slide_1.line_2, session_13_slide_3.line_1,
                 session_13_slide_3.line_2, session_13_slide_3.line_3,
                 session_13_slide_4.line_1, session_13_slide_4.line_2,
                 session_13_slide_5.line_1]
      content.each do |c|
        expect(driver.page_source).to include(c)
      end
    end

    3.times { session.click_next }

    session_13.open_dropdown
    # expect(session.first_selection_text).to_not be ''

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

    scroll_to_and_start(session_14, '1 / 3')

    wait do
      content = [session_14_slide_1.line_1, session_14_slide_1.line_2,
                 session_14_slide_2.line_1, session_14_slide_2.line_2,
                 session_14_slide_3.line_1]
      content.each do |c|
        expect(driver.page_source).to include(c)
      end
    end

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

    scroll_to_and_start(session_15, '1 / 1')

    wait do
      content = [session_15_slide_1.line_1, session_15_slide_1.line_2,
                 session_15_slide_1.line_3, session_15_slide_1.line_4]
      content.each do |c|
        expect(driver.page_source).to include(c)
      end
    end

    session.return_to_home_page
    home.assert_on_page
  end

  it 'completes the sixteenth session' do
    session.open

    scroll_to_and_start(session_16, '1 / 4')

    wait do
      content = [session_16_slide_1.line_1, session_16_slide_1.line_2,
                 session_16_slide_1.line_3, session_16_slide_2.line_1,
                 session_16_slide_2.line_2, session_16_slide_2.line_3,
                 session_16_slide_3.line_1, session_16_slide_3.line_2,
                 session_16_slide_4.line_1]
      content.each do |c|
        expect(driver.page_source).to include(c)
      end
    end

    3.times { session.click_next }

    session.click_play
    sleep(3)
    session.click_play

    session.return_to_home_page
    home.assert_on_page
  end

  it 'completes the seventeenth session' do
    session.open

    scroll_to_and_start(session_17, '1 / 2')

    wait do
      content = [session_17_slide_1.line_1, session_17_slide_1.line_2,
                 session_17_slide_2.line_1, session_17_slide_2.line_2]
      content.each do |c|
        expect(driver.page_source).to include(c)
      end
    end

    2.times { session.click_next }

    session.return_to_home_page
    home.assert_on_page
  end

  it 'completes the last session' do
    session.open

    scroll_to_and_start(session_18, '1 / 5')

    wait do
      content = [session_18_slide_1.line_1, session_18_slide_1.line_2,
                 session_18_slide_2.line_1, session_18_slide_2.line_2,
                 session_18_slide_2.line_3, session_18_slide_3.line_1,
                 session_18_slide_3.line_2, session_18_slide_4.line_1,
                 session_18_slide_5.line_1, session_18_slide_5.line_2]
      content.each do |c|
        expect(driver.page_source).to include(c)
      end
    end

    4.times { session.click_next }
    session.return_to_home_page
    home.assert_on_page
  end

  it 'sees all sessions have been read' do
    session.open
    expect(driver.page_source).to_not include('No leído')
  end
end

def scroll_to_and_start(item, page_num)
  tries ||= 7
  item.start
  sleep(1)
  find(page_num)
rescue Selenium::WebDriver::Error::NoSuchElementError
  Appium::TouchAction
    .swipe(start_x: 630, start_y: 1610, end_x: 540, end_y: 1090, duration: 300)
  retry unless (tries -= 1).zero?
end
