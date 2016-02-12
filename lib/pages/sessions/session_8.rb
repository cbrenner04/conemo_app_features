# page object
module Pages
  # for session 8
  module SessionEight
    class << self
      def title
        'Puede ser difícil comenzar'
      end

      def start
        tags('android.view.View')[26].click
      end
    end
  end
end

# create reference
module Kernel
  def session_8
    Pages::SessionEight
  end
end
