# page object
module Pages
  # for session 9
  module SessionNine
    class << self
      def title
        'Encontrando las mejores actividades para ti.'
      end

      def start
        tags('android.view.View')[29].click
      end
    end
  end
end

# create reference
module Kernel
  def session_9
    Pages::SessionNine
  end
end
