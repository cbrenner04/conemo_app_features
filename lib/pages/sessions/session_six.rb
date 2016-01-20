# page object
module Pages
  # for session 6
  module SessionSix
    class << self
      def title
        '¡Cuidar tu salud es importante!'
      end

      def start
        button = tags('android.view.View')
        button[20].click
      end

      def open_dropdown
        execute_script 'mobile: tap', x: 860, y: 1070
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
    end
  end
end

# create reference
module Kernel
  def session_6
    Pages::SessionSix
  end
end
