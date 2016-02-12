# page object
module Pages
  # for help page
  module Help
    class << self
      def open
        find('Contactar enfermera').click
      end

      def ask_for_help
        find('Solicitar ayuda').click
      end
    end
  end
end

# create reference
module Kernel
  def help
    Pages::Help
  end
end
