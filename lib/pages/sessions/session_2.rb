# page object
module Pages
  # for session 2
  module SessionTwo
    class << self
      def title
        'Estar activo te ayudará a tener una vida más saludable'
      end

      def start
        tags('android.view.View')[8].click
      end

      def open_dropdown
        tag('android.widget.Spinner').click
      end
    end
  end
end

# create reference
module Kernel
  def session_2
    Pages::SessionTwo
  end
end
