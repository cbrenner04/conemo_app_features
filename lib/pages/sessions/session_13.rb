# page object
module Pages
  # for session 13
  module SessionThirteen
    class << self
      def title
        'Actividades que mejoran tu salud'
      end

      def start
        tags('android.view.View')[41].click
      end

      def open_dropdown
        tag('android.widget.Spinner').click
      end

      def choose_item
        tries ||= 2
        tags('android.widget.CheckedTextView')[rand(0..8)].click
      rescue NoMethodError
        session.scroll_down
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

# create reference
module Kernel
  def session_13
    Pages::SessionThirteen
  end
end
