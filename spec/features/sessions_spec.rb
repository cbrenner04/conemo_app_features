# filename: ./spec/features/sessions_spec.rb

# require content
Dir['./lib/content/*.rb'].each { |file| require file }

describe 'An authorized user' do
  before(:all) do
    start_driver
    configure_participant('test')
    increment_date_by(44)
    return_to_app
  end

  after(:all) do
    toggle_auto_date_time
    driver_quit
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
    wait { session_1.choose_response }
    session_1.submit_response

    session.click_next

    session.return_to_home_page
    home.assert_on_page
  end

  it 'completes the second session' do
    session.open

    scroll_to_and_start(session_2)

    wait do
      content = []
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

    scroll_to_and_start(session_3)

    wait do
      content = []
      content.each do |c|
        expect(driver.page_source).to include(c)
      end
    end

    session.click_next

    session_3.open_dropdown
    expect(session.first_selection_text).to_not be ''

    session_3.choose_item

    session.return_to_home_page
    home.assert_on_page
  end

  it 'completes the fourth session' do
    session.open

    scroll_to_and_start(session_4)

    wait do
      content = []
      content.each do |c|
        expect(driver.page_source).to include(c)
      end
    end

    session.click_next

    session_4.open_dropdown
    session.choose_response
    session.submit

    session.return_to_home_page
    home.assert_on_page
  end

  it 'completes the fifth session' do
    session.open

    scroll_to_and_start(session_5)

    wait do
      content = []
      content.each do |c|
        expect(driver.page_source).to include(c)
      end
    end

    4.times { session.click_next }

    session_5.open_dropdown
    session.choose_response
    session.submit

    session.click_next
    session.return_to_home_page
    home.assert_on_page
  end

  it 'completes the sixth session' do
    session.open

    scroll_to_and_start(session_6)

    wait do
      content = []
      content.each do |c|
        expect(driver.page_source).to include(c)
      end
    end

    3.times { session.click_next }

    session_6.open_dropdown
    expect(session.first_selection_text).to_not be ''

    session_6.choose_item

    session.click_next
    session.return_to_home_page
    home.assert_on_page
  end

  it 'completes the seventh session' do
    session.open

    scroll_to_and_start(session_7)

    wait do
      content = []
      content.each do |c|
        expect(driver.page_source).to include(c)
      end
    end

    session.click_play
    sleep(3)
    session.click_play

    session.click_next
    session_7.click_dropdown
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

    scroll_to_and_start(session_8)

    wait do
      content = []
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

    scroll_to_and_start(session_9)

    wait do
      content = []
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

    scroll_to_and_start(session_10)

    wait do
      content = []
      content.each do |c|
        expect(driver.page_source).to include(c)
      end
    end

    3.times { session.click_next }

    session_10.open_dropdown
    expect(session.first_selection_text).to_not be ''

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

    scroll_to_and_start(session_11)

    wait do
      content = []
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

    scroll_to_and_start(session_12)

    wait do
      content = []
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

    scroll_to_and_start(session_13)

    wait do
      content = []
      content.each do |c|
        expect(driver.page_source).to include(c)
      end
    end

    3.times { session.click_next }

    session_13.open_dropdown
    expect(session.first_selection_text).to_not be ''

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

    scroll_to_and_start(session_14)

    wait do
      content = []
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

    scroll_to_and_start(session_15)

    wait do
      content = []
      content.each do |c|
        expect(driver.page_source).to include(c)
      end
    end

    session.return_to_home_page
    home.assert_on_page
  end

  it 'completes the sixteenth session' do
    session.open

    scroll_to_and_start(session_16)

    wait do
      content = []
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

    scroll_to_and_start(session_17)

    wait do
      content = []
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

    scroll_to_and_start(session_18)

    4.times { session.click_next }
    session.return_to_home_page
    home.assert_on_page
  end

  it 'sees all sessions have been read' do
    session.open
    expect(driver.page_source).to_not include 'No leido'
  end
end

def scroll_to_and_start(item)
  tries ||= 7
  item.start
rescue Selenium::WebDriver::Error::NoSuchElementError
  session.scroll_down
  retry unless (tries -= 1).zero?
end
