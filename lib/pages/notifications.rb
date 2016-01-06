# page object
module Pages
  # for notifications
  module Notifications
    class << self
      def open_first
        find('Estar activo te ayudará a tener una vid..').click
      end

      def open_last
        find('Sesión final').click
      end
    end
  end
end

# initialize
module Kernel
  def notifications
    Pages::Notifications
  end
end
