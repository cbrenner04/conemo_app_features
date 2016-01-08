# page object
module Pages
  # for session 17
  module SessionSeventeen
    class << self
      def title
        '¡Continúa con tu rutina!'
      end

      def start
        button = tags('android.view.View')
        button[53].click
      end
    end
  end
end

# initialize
module Kernel
  def session_17
    Pages::SessionSeventeen
  end
end
