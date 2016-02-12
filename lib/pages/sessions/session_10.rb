# page object
module Pages
  # for session 10
  module SessionTen
    class << self
      def title
        'Cumplir con nuestros deberes nos hace sentir aliviados'
      end

      def start
        tags('android.view.View')[32].click
      end

      def open_dropdown
        tag('android.widget.Spinner').click
      end

      def choose_item
        tries ||= 2
        tags('android.widget.CheckedTextView')[rand(0..11)].click
      rescue NoMethodError
        session.scroll_down
        retry unless (tries -= 1).zero?
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

# create reference
module Kernel
  def session_10
    Pages::SessionTen
  end
end
