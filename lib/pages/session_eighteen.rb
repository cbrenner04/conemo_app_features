# page object
module Pages
  # for session 19
  module SessionEighteen
    class << self
      def start
        button = tags('android.view.View')
        button[56].click
      end

      def title
        'Sesión final'
      end
    end
  end
end

# initialize
module Kernel
  def session_18
    Pages::SessionEighteen
  end
end
