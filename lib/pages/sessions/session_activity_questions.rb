# page object
module Pages
  # for activity questions that display at the start and end of sessions
  module SessionActivityQuestions
    class << self
      def open_question_dropdown
        tags('android.widget.Spinner')[1].click
      end

      def respond_to_question
        tag('android.widget.CheckedTextView').click
      end

      def respond_to_follow_up_with(response)
        radio = tags('android.widget.RadioButton')
        if response.downcase == 'yes'
          radio[0].click
          follow_up_extras
        else
          radio[1].click
          find 'That\'s unfortunate, it can really help to do the things'
        end
      end

      # notes for adding this to specs

      # question

      # session.click_next

      # session_activity.open_question_dropdown
      # session_activity.respond_to_question

      # follow up
      #
      # session_activity_question.respond_to_follow_up_with(['yes', 'no'].sample)
      # session.click_next

      private

      def follow_up_extras
        find 'Great'
        dropdown = tags('android.widget.Spinner')
        choice = tags('android.widget.CheckedTextView')
        dropdown[0].click
        choice[rand(6)].click
        dropdown[1].click
        choice[rand(6)].click
      end
    end
  end
end

# create reference
module Kernel
  def session_activity_question
    Pages::SessionActivityQuestions
  end
end
