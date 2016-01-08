# page object
module Pages
  # for session 9
  module SessionNine
    class << self
      def title
        'Encontrando las mejores actividades para ti.'
      end

      def start
        button = tags('android.view.View')
        button[29].click
      end
    end
  end
end

# initialize
module Kernel
  def session_9
    Pages::SessionNine
  end
end
