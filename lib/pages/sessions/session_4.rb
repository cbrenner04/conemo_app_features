# page object
module Pages
  # for session 4
  module SessionFour
    class << self
      def title
        'Realizar actividades placenteras nos hace sentir bien.'
      end

      def start
        tags('android.view.View')[14].click
      end

      def open_dropdown
        tag('android.widget.Spinner').click
      end
    end
  end
end

# create reference
module Kernel
  def session_4
    Pages::SessionFour
  end
end
