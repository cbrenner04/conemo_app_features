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
        button[53].click
      end

      def open_dropdown
        execute_script 'mobile: tap', x: 890, y: 1030
      end

      def choose_item
        items = tags('android.widget.CheckTextView')
        items[rand(0..8)].click
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
