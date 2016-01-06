# page object
module Pages
  # for session 2
  module SessionTwo
    class << self
      def title
        'Estar activo te ayudará a tener una vida más saludable'
      end

      def start
        button = tags('android.view.View')
        button[9].click
      end

      def open_dropdown
        execute_script 'mobile: tap', x: 880, y: 795
      end
    end
  end
end

# initialize
module Kernel
  def session_2
    Pages::SessionTwo
  end
end
