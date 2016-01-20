# page object
module Pages
  # for configuration page
  module Configuration
    class << self
      def enter_id(id)
        tag('android.widget.EditText').send_keys(id)
      end

      def submit
        find('Inicio').click
      end
    end
  end
end

# create reference
module Kernel
  def configuration
    Pages::Configuration
  end
end
