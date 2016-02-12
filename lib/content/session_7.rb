# content from session 7 that is compared in session_spec.rb
module SessionSeven
  # content specific to slide 1
  module SlideOne
    class << self
      def line_1
        '¡Planeando actividades para la semana!'
      end

      def line_2
        'Para iniciar el vídeo, por favor, presiona el triángulo debajo del ' \
        'vídeo.'
      end
    end
  end

  # content specific to slide 2
  module SlideTwo
    class << self
      def line_1
        'Tómate unos minutos para pensar qué actividad placentera te gustaría' \
        ' hacer esta semana.'
      end

      def line_2
        'Elige una actividad que puedas hacer esta semana. Puede ser una ' \
        'actividad sencilla o pequeña.'
      end

      def line_3
        'Mira la siguiente lista de actividades placenteras y elige una.'
      end
    end
  end

  # content specific to slide 3
  module SlideThree
    class << self
      def line_1
        '¿Qué día planeas realizar la actividad?'
      end

      def line_2
        'Coloca la fecha y hora de cuándo quieres realizarlas en el ' \
        'calendario abajo.'
      end
    end
  end
end

# create reference
module Kernel
  def session_7_slide_1
    SessionSeven::SlideOne
  end

  def session_7_slide_2
    SessionSeven::SlideTwo
  end

  def session_7_slide_3
    SessionSeven::SlideThree
  end
end
