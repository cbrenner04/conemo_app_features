# page object
module Pages
  # for training session
  module Training
    class << self
      def open
        find('Sesión de entrenamiento').click
      end
    end
  end
end

# intialize
module Kernel
  def training
    Pages::Training
  end
end
