# page object
module Pages
  # for session 13
  module SessionThirteen
    class << self
      def title
        'Actividades que mejoran tu salud'
      end

      def start
        button = tags('android.view.View')
        button[41].click
      end

      def open_dropdown
        execute_script 'mobile: tap', x: 890, y: 1030
      end

      def choose_item
        tries ||= 2
        items = tags('android.widget.CheckedTextView')
        r = rand(0..8)
        items[r].click
      rescue NoMethodError
        Appium::TouchAction
          .swipe(start_x: 630, start_y: 1610,
                 end_x: 540, end_y: 1090, duration: 300)
        retry unless (tries -= 1).zero?
      end

      def open_datepicker
        execute_script 'mobile: tap', x: 845, y: 770
      end

      def set_picker
        first_button.click
      end

      def open_timepicker
        execute_script 'mobile: tap', x: 845, y: 1175
      end
    end
  end
end

# initialize
module Kernel
  def session_13
    Pages::SessionThirteen
  end
end
