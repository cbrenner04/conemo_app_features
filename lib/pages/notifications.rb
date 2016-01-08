# page object
module Pages
  # for notifications
  module Notifications
    class << self
      def update_date_navigate_to_notifications(day)
        navigate_to_date_time
        increment_date_by(day)
        driver.open_notifications
        sleep(1)
      end

      def open_first
        wait { text(session_2.title).click }
      end

      def open_second
        wait { text(session_3.title).click }
      end

      def open_third
        wait { text(session_4.title).click }
      end

      def open_fourth
        wait { text(session_5.title).click }
      end

      def open_fifth
        wait { text(session_6.title).click }
      end

      def open_sixth
        wait { text(session_7.title).click }
      end

      def open_seventh
        wait { text(session_8.title).click }
      end

      def open_eighth
        wait { text(session_9.title).click }
      end

      def open_ninth
        wait { text(session_10.title).click }
      end

      def open_tenth
        wait { text(session_11.title).click }
      end

      def open_eleventh
        wait { text(session_12.title).click }
      end

      def open_twelfth
        wait { text(session_13.title).click }
      end

      def open_thirteenth
        wait { text(session_14.title).click }
      end

      def open_fourteenth
        wait { text(session_15.title).click }
      end

      def open_fifteenth
        wait { text(session_16.title).click }
      end

      def open_sixteenth
        wait { text(session_17.title).click }
      end

      def open_last
        wait { text(session_18.title).click }
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
