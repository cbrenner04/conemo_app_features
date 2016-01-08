# page object
module Pages
  # for session 4
  module SessionFour
    class << self
      def title
        'Realizar actividades placenteras nos hace sentir bien.'
      end

      def start
        button = tags('android.view.View')
        button[14].click
      end

      def open_dropdown
        execute_script 'mobile: tap', x: 913, y: 846
      end
    end
  end
end

# initialize
module Kernel
  def session_4
    Pages::SessionFour
  end
end
