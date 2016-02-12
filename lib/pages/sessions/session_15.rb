# page object
module Pages
  # for session 15
  module SessionFifteen
    class << self
      def title
        '¡No te olvides de tu objetivo!'
      end

      def start
        tags('android.view.View')[47].click
      end
    end
  end
end

# create reference
module Kernel
  def session_15
    Pages::SessionFifteen
  end
end
