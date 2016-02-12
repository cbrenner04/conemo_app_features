# page object
module Pages
  # for session 6
  module SessionSix
    class << self
      def title
        '¡Cuidar tu salud es importante!'
      end

      def start
        tags('android.view.View')[20].click
      end

      def open_dropdown
        tag('android.widget.Spinner').click
      end

      def choose_item
        tries ||= 2
        tags('android.widget.CheckedTextView')[rand(0..8)].click
      rescue NoMethodError
        session.scroll_down
        retry unless (tries -= 1).zero?
      end
    end
  end
end

# create reference
module Kernel
  def session_6
    Pages::SessionSix
  end
end
