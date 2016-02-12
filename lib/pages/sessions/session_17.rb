# page object
module Pages
  # for session 17
  module SessionSeventeen
    class << self
      def title
        '¡Continúa con tu rutina!'
      end

      def start
        tags('android.view.View')[53].click
      end
    end
  end
end

# create reference
module Kernel
  def session_17
    Pages::SessionSeventeen
  end
end
