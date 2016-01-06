# page object
module Pages
  # for session 5
  module SessionFive
    class << self
      def title
        'Terminar nuestras tareas nos hace sentir mejor.'
      end

      def start
        button = tags('android.view.View')
        button[21].click
      end

      def open_dropdown
        execute_script 'mobile: tap', x: 913, y: 846
      end
    end
  end
end

# initialize
module Kernel
  def session_5
    Pages::SessionFive
  end
end
