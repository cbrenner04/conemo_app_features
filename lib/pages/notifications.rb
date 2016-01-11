# page object
module Pages
  # for notifications
  module Notifications
    class << self
      def clear_notifications
        driver.open_notifications
        begin
          tries ||= 2
          find('com.android.systemui:id/clear_all_button').click
        rescue Selenium::WebDriver::Error::NoSuchElementError
          Appium::TouchAction.swipe(start_x: 540, start_y: 1090, end_x: 630,
                                    end_y: 1610, duration: 200)
          retry unless (tries -= 1).zero?
        end
        sleep(1)
      end

      def update_date_navigate_to_notifications(day)
        clear_notifications
        navigate_to_date_time
        increment_date_by(day)
        driver.open_notifications
        sleep(1)
      end

      def open_notification(title)
        tries ||= 3
        text(title).click
      rescue Selenium::WebDriver::Error::NoSuchElementError
        Appium::TouchAction
          .swipe(start_x: 630, start_y: 1610,
                 end_x: 540, end_y: 1090, duration: 300)
        retry unless (tries -= 1).zero?
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
