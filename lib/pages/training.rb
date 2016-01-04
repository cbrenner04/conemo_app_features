# page object
module Pages
  # for training session
  module Training
    class << self
      def open
        find('Sesión de entrenamiento').click
      end

      def scroll_down
        Appium::TouchAction
          .swipe(start_x: 630, start_y: 1610,
                 end_x: 540, end_y: 1090, duration: 300)
        sleep(2)
      end

      def scroll_up
        Appium::TouchAction
          .swipe(start_x: 540, start_y: 1090,
                 end_x: 630, end_y: 1610, duration: 300)
        sleep(2)
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
