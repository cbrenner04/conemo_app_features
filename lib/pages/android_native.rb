# page object
module Pages
  # for Android Native interactions
  module AndroidNative
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

      def navigate_to_date_time
        # navigate to home page
        driver.press_keycode 3
        sleep(1)

        # select 'Settings' - NOTE: my device has 'Settings' on the home page
        wait { find('Settings').click }

        # scroll to and select 'Date and Time'
        begin
          tries ||= 8
          find('Date and time').click
        rescue Selenium::WebDriver::Error::NoSuchElementError
          Appium::TouchAction.swipe(start_x: 630, start_y: 1610,
                                    end_x: 540, end_y: 1090, duration: 300)
          retry unless (tries -= 1).zero?
        end
      end

      def toggle_auto_date_time
        # turn off automatic date and time
        wait { find('Automatic date and time').click }
      end

      def date_edit
        tags('android.widget.ImageButton')
      end

      def update_month(date_1)
        # this updates the month in the date picker by using the carrots
        diff_month = date_1.strftime('%m').to_i - Date.today.strftime('%m').to_i
        if diff_month > 0
          diff_month.times { date_edit[0].click }
        elsif diff_month < 0
          diff_month.abs.times { date_edit[1].click }
        end
      end

      def update_days(date_1)
        # this updates the day in the date picker by using the carrots
        diff_days = date_1.strftime('%d').to_i - Date.today.strftime('%d').to_i
        if diff_days > 0
          diff_days.times { date_edit[2].click }
        elsif diff_days < 0
          diff_days.abs.times { date_edit[3].click }
        end
      end

      def update_years(date_1)
        # this updates the year in the date picker by using the carrots
        diff_years = date_1.strftime('%Y').to_i - Date.today.strftime('%Y').to_i
        if diff_years > 0
          diff_years.times { date_edit[4].click }
        elsif diff_years < 0
          diff_years.abs.times { date_edit[5].click }
        end
      end

      def increment_date_by(days)
        date_1 = Date.today + days
        # open date picker
        find('Set date').click

        # set date ahead
        update_month(date_1)
        update_days(date_1)
        update_years(date_1)
        find('OK').click

        # assert date is set to correct date
        find(date_1.strftime('%B %-d, %Y'))
      end

      def return_to_app
        driver.press_keycode 3
        wait { find('CONEMO').click }
        home.assert_on_page
      end
    end
  end
end

# create reference
module Kernel
  def android_native
    Pages::AndroidNative
  end
end
