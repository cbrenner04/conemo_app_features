# page object
module Pages
  # for session 11
  module SessionEleven
    class << self
      def title
        'Haz las cosas a tu propio ritmo'
      end

      def start
        button = tags('android.view.View')
        button[45].click
      end
    end
  end
end

# initialize
module Kernel
  def session_11
    Pages::SessionEleven
  end
end
