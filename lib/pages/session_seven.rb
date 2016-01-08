# page object
module Pages
  # for session 7
  module SessionSeven
    class << self
      def title
        'Planeando actividades para la semana.'
      end

      def start
        button = tags('android.view.View')
        button[23].click
      end

      def open_dropdown
        execute_script 'mobile: tap', x: 830, y: 1550
      end

      def open_datepicker
        execute_script 'mobile: tap', x: 845, y: 1155
      end

      def set_picker
        first_button.click
      end

      def open_timepicker
        execute_script 'mobile: tap', x: 845, y: 1290
      end
    end
  end
end

# initialize
module Kernel
  def session_7
    Pages::SessionSeven
  end
end
