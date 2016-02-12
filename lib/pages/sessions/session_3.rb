# page object
module Pages
  # for session 3
  module SessionThree
    class << self
      def title
        '¿Qué quieres lograr con CONEMO?'
      end

      def start
        tags('android.view.View')[11].click
      end

      def open_dropdown
        tag('android.widget.Spinner').click
      end

      def choose_item
        tags('android.widget.CheckedTextView')[rand(0..6)].click
      end
    end
  end
end

# create reference
module Kernel
  def session_3
    Pages::SessionThree
  end
end
