# page object
module Pages
  # for session 10
  module SessionTen
    class << self
      def title
        'Cumplir con nuestros deberes nos hace sentir aliviados'
      end

      def start
        button = tags('android.view.View')
        button[41].click
      end

      def open_dropdown
        execute_script 'mobile: tap', x: 900, y: 995
      end

      def choose_item
        items = tags('android.widget.CheckTextView')
        items[rand(0..11)].click
      end

      def open_datepicker
        execute_script 'mobile: tap', x: 845, y: 1400
      end

      def set_picker
        first_button.click
      end

      def open_timepicker
        execute_script 'mobile: tap', x: 845, y: 1520
      end
    end
  end
end

# initialize
module Kernel
  def session_10
    Pages::SessionTen
  end
end
