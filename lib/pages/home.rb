# page object
module Pages
  # for home page
  module Home
    class << self
      def assert_on_page
        wait { find 'Sesiones' }
      end

      def return_home
        first_button.click
      end
    end
  end
end

# create reference
module Kernel
  def home
    Pages::Home
  end
end
