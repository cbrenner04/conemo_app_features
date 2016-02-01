# page object
module Pages
  # for notifications
  module Notifications
    class << self
      def update_date_and_navigate_to_notifications(day)
        android_native.clear_notifications
        android_native.navigate_to_date_time
        android_native.increment_date_by(day)
        driver.open_notifications
        sleep(2)
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

# create reference
module Kernel
  def notifications
    Pages::Notifications
  end
end
