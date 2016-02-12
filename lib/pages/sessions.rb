# page object
module Pages
  # for sessions page
  module Session
    class << self
      def open
        find('Sesiones').click
      end

      def click_next
        execute_script 'mobile: tap', x: 890, y: 1845
        sleep(1)
      end

      def click_play
        tag('android.widget.Image').click
      end

      def open_dropdown
        tag('android.widget.Spinner').click
      end

      def choose_response
        checkbox = tags('android.widget.CheckedTextView')
        int = (0..6).to_a.sample(2)
        int.each do |i|
          checkbox[i].click
        end
      end

      def submit_response
        first_button.click
      end

      def first_selection_text
        tags('android.widget.CheckedTextView')[0].text
      end

      def return_to_home_page
        execute_script 'mobile: tap', x: 890, y: 1845
      end

      def session_list_header
        'Sesiones'
      end

      def scroll_down
        Appium::TouchAction
          .swipe(start_x: 630, start_y: 1810,
                 end_x: 540, end_y: 1090, duration: 500)
      end

      def scroll_up
        Appium::TouchAction
          .swipe(start_x: 630, start_y: 1090,
                 end_x: 540, end_y: 1810, duration: 500)
      end

      def assert_navigation_is_available
        unless driver.page_source.include?('1 /')
          scroll_down
          scroll_up
        end
      end

      # opening the session will fail if you don't run the entire page due to an
      # element being subtracted from this page after every view
      def scroll_to_and_start(item)
        tries ||= 7
        item.start
        sleep(1)
        unless driver.page_source.include?('1 ¡Bienvenido a CONEMO!')
          assert_navigation_is_available
        end
        find('1 /')
      rescue Selenium::WebDriver::Error::NoSuchElementError
        scroll_down
        sleep(1)
        retry unless (tries -= 1).zero?
      end
    end
  end
end

# create reference
module Kernel
  def session
    Pages::Session
  end
end
