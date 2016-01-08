# page object
module Pages
  # for session 15
  module SessionFifteen
    class << self
      def title
        '¡No te olvides de tu objetivo!'
      end

      def start
        button = tags('android.view.View')
        button[47].click
      end
    end
  end
end

# initialize
module Kernel
  def session_15
    Pages::SessionFifteen
  end
end
