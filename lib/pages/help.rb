# page object
module Pages
  # for help page
  module Help
    class << self
      def open
        find('Solicitar ayuda').click
      end

      def ask_for_help
        find('Ask for Help').click
      end
    end
  end
end

# initialize
module Kernel
  def help
    Pages::Help
  end
end
