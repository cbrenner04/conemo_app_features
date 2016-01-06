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
        button[25].click
      end

      def open_dropdown
        execute_script 'mobile: tap', x: 860, y: 1070
      end

      def choose_item
        items = tags('android.widget.CheckTextView')
        items[rand(0..8)].click
      end
    end
  end
end

# initialize
module Kernel
  def session_6
    Pages::SessionSix
  end
end
