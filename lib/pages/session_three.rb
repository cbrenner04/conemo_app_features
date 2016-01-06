# page object
module Pages
  # for session 3
  module SessionThree
    class << self
      def title
        '¿Qué quieres lograr con CONEMO?'
      end

      def start
        button = tags('android.view.View')
        button[13].click
      end

      def open_dropdown
        execute_script 'mobile: tap', x: 925, y: 1530
      end

      def choose_item
        items = tags('android.widget.CheckTextView')
        items[rand(0..6)].click
      end
    end
  end
end

# initialize
module Kernel
  def session_3
    Pages::SessionThree
  end
end
