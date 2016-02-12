# page object
module Pages
  # for session 5
  module SessionFive
    class << self
      def title
        'Terminar nuestras tareas nos hace sentir mejor.'
      end

      def start
        tags('android.view.View')[17].click
      end

      def open_dropdown
        tag('android.widget.Spinner').click
      end
    end
  end
end

# create reference
module Kernel
  def session_5
    Pages::SessionFive
  end
end
