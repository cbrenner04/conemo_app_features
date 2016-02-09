# page object
module Pages
  # for sessions page
  module Session
    class << self
      def open
        find('Sesiones').click
      end

      def start
        find('Inicio').click
      end

      def click_next
        execute_script 'mobile: tap', x: 890, y: 1845
        sleep(1)
      end

      def click_play
        tag('android.widget.Image').click
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
        items = tags('android.widget.CheckedTextView')
        items[0].first_selection_text
      end

      def return_to_home_page
        execute_script 'mobile: tap', x: 890, y: 1845
      end

      def session_list_header
        'Sesiones'
      end

      def scroll_down
        Appium::TouchAction
          .swipe(start_x: 630, start_y: 1610,
                 end_x: 540, end_y: 1090, duration: 300)
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
