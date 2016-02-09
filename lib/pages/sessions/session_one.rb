# page object
module Pages
  # for session 1
  module SessionOne
    class << self
      def title
        '¡Bienvenido a CONEMO!'
      end

      def view
        tags('android.view.View')
      end

      def start
        view[5].click
      end

      def open_dropdown
        dropdown = tags('android.widget.Spinner')
        dropdown[0].click
      end

      def click_play
        view[24].click
      end
    end
  end
end

# create reference
module Kernel
  def session_1
    Pages::SessionOne
  end
end
