# page object
module Pages
  # for session 12
  module SessionTwelve
    class << self
      def title
        '¡La costumbre es lo que te hace seguir adelante!'
      end

      def start
        button = tags('android.view.View')
        button[49].click
      end
    end
  end
end

# initialize
module Kernel
  def session_12
    Pages::SessionTwelve
  end
end
