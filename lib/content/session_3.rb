# content for session 3 which is compared in sessions_spec.rb
module SessionThree
  # content specific to slide 1
  module SlideOne
    class << self
      def line_1
        'Son muchas las cosas que puedes hacer para ayudarte a sentirte mejor.'
      end

      def line_2
        'Una de ellas es aumentar la cantidad de actividades placenteras y ' \
        'saludables en tu vida.'
      end

      def line_3
        'Esto ha ayudado a muchas personas a sentirse más felices y ' \
        'satisfechas con su vida.'
      end
    end
  end

  # content specific to slide 2
  module SlideTwo
    class << self
      def line_1
        'Entendemos que eres una persona ocupada. Por eso este programa está' \
        ' diseñado para que te tome solo algunos minutos a la semana.'
      end

      def line_2
        '¡Tú eliges las actividades y el ritmo para realizarlas! Selecciona ' \
        'el objetivo que te gustaría lograr al terminar este programa:'
      end
    end
  end
end

# create reference
module Kernel
  def session_3_slide_1
    SessionThree::SlideOne
  end

  def session_3_slide_2
    SessionThree::SlideTwo
  end
end
