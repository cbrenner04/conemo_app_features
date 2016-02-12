# page object
module Pages
  # for session 19
  module SessionEighteen
    class << self
      def start
        tags('android.view.View')[56].click
      end

      def title
        'Sesión final'
      end
    end
  end
end

# create reference
module Kernel
  def session_18
    Pages::SessionEighteen
  end
end
