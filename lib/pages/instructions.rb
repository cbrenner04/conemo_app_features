# page object
module Pages
  # for instructions page
  module Instructions
    class << self
      def open
        find('Instrucciones').click
      end

      def scroll_down
        Appium::TouchAction
          .swipe(start_x: 630, start_y: 1610,
                 end_x: 540, end_y: 1090, duration: 200)
        sleep(2)
      end

      def scroll_up
        Appium::TouchAction
          .swipe(start_x: 540, start_y: 1090,
                 end_x: 630, end_y: 1610, duration: 200)
        sleep(2)
      end
    end
  end
end

# create reference
module Kernel
  def instructions
    Pages::Instructions
  end
end
