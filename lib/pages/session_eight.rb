# page object
module Pages
  # for session 8
  module SessionEight
    class << self
      def title
        'Puede ser difícil comenzar'
      end

      def start
        button = tags('android.view.View')
        button[33].click
      end
    end
  end
end

# initialize
module Kernel
  def session_8
    Pages::SessionEight
  end
end
