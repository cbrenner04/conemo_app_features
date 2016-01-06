# page object
module Pages
  # for session 16
  module SessionSixteen
    class << self
      def title
        '¡Los cambios toman tiempo!'
      end

      def start
        button = tags('android.view.View')
        button[65].click
      end
    end
  end
end

# initialize
module Kernel
  def session_16
    Pages::SessionSixteen
  end
end
