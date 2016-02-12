# page object
module Pages
  # for Android Native interactions
  module AndroidNative
    class << self
      def clear_notifications
        sleep(1)
        driver.open_notifications
        begin
          tries ||= 2
          find('com.android.systemui:id/clear_all_button').click
        rescue Selenium::WebDriver::Error::NoSuchElementError
          Appium::TouchAction.swipe(start_x: 540, start_y: 1090, end_x: 630,
                                    end_y: 1610, duration: 200)
          retry unless (tries -= 1).zero?
        end
      end

      def navigate_to_date_time
        # navigate to home page
        driver.press_keycode 3

        # select 'Settings' - NOTE: my device has 'Settings' on the home page
        # appium has a tendency to think it's selecting 'Settings' when it
        # hasn't, thus a sleep
        sleep(1)
        wait { find('Settings').click }

        # scroll to and select 'Date and Time'
        open_date_time
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
        if diff_month(date_1) > 0
          diff_month(date_1).times { date_edit[0].click }
        elsif diff_month(date_1) < 0
          diff_month(date_1).abs.times { date_edit[1].click }
        end
      end

      def update_days(date_1)
        # this updates the day in the date picker by using the carrots
        if diff_days(date_1) > 0
          diff_days(date_1).times { date_edit[2].click }
        elsif diff_days(date_1) < 0
          diff_days(date_1).abs.times { date_edit[3].click }
        end
      end

      def update_years(date_1)
        # this updates the year in the date picker by using the carrots
        if diff_years(date_1) > 0
          diff_years(date_1).times { date_edit[4].click }
        elsif diff_years(date_1) < 0
          diff_years(date_1).abs.times { date_edit[5].click }
        end
      end

      def increment_date_by(days)
        date_1 = Date.today + days

        # open date picker
        open_set_date

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

      private

      def open_date_time
        tries ||= 8
        find('Date and time').click
      rescue Selenium::WebDriver::Error::NoSuchElementError
        Appium::TouchAction.swipe(start_x: 630, start_y: 1610,
                                  end_x: 540, end_y: 1090, duration: 300)
        retry unless (tries -= 1).zero?
      end

      def open_set_date
        tries ||= 2
        find('Set date').click
        find('Cancel')
      rescue Selenium::WebDriver::Error::NoSuchElementError
        toggle_auto_date_time
        retry unless (tries -= 1).zero?
      end

      def edit_date
        edit_date ||= tags('android.widget.EditText')
      end

      def diff_month(date_1)
        month_reps = { 'Jan' => 1, 'Feb' => 2, 'Mar' => 3, 'Apr' => 4,
                       'May' => 5, 'Jun' => 6, 'Jul' => 7, 'Aug' => 8,
                       'Sep' => 9, 'Oct' => 10, 'Nov' => 11, 'Dec' => 12 }
        date_1.strftime('%m').to_i - month_reps[edit_date[0].text]
      end

      def diff_days(date_1)
        date_1.strftime('%d').to_i - edit_date[1].text.to_i
      end

      def diff_years(date_1)
        date_1.strftime('%Y').to_i - edit_date[2].text.to_i
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
