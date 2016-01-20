# page object
module Pages
  # for session 14
  module SessionFourteen
    class << self
      def title
        '¡Un paso a la vez!'
      end

      def start
        button = tags('android.view.View')
        button[44].click
      end

      def open_datepicker
        execute_script 'mobile: tap', x: 845, y: 1160
      end

      def set_picker
        first_button.click
      end

      def open_timepicker
        execute_script 'mobile: tap', x: 845, y: 1280
      end

      def enter_text(text)
        tag('android.widget.EditText').send_keys(text)
      end
    end
  end
end

# create reference
module Kernel
  def session_14
    Pages::SessionFourteen
  end
end
