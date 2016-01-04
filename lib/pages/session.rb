# page object
module Pages
  # for help page
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
      end

      def click_play
        execute_script 'mobile: tap', x: 563, y: 1268
      end

      def open_dropdown
        execute_script 'mobile: tap', x: 930, y: 1425
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

      def return_to_session_page
        execute_script 'mobile: tap', x: 890, y: 1845
      end
    end
  end
end

# initialize
module Kernel
  def session
    Pages::Session
  end
end
