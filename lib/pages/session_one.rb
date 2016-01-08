# page object
module Pages
  # for session 1
  module SessionOne
    class << self
      def title
        '¡Bienvenido a CONEMO!'
      end

      def start
        button = tags('android.view.View')
        button[5].click
      end

      def open_dropdown
        execute_script 'mobile: tap', x: 930, y: 1425
      end

      def click_play
        execute_script 'mobile: tap', x: 545, y: 1285
      end
    end
  end
end

# initialize
module Kernel
  def session_1
    Pages::SessionOne
  end
end
