# content for session two that is compaired in session_spec.rb
module SessionTwo
  # content specific to slide 1
  module SlideOne
    class << self
      def line_1
        'Este programa te ayudará a tener una vida más saludable y feliz.'
      end

      def line_2
        'El programa es sencillo, pero tendrás que esforzarte un poco y ' \
        'dedicarle algunos minutos a la semana.'
      end

      def line_3
        'Te enseñaremos algunas habilidades que han ayudado a muchas personas' \
        ' a disfrutar más de la vida.'
      end
    end
  end

  # content specific to slide 2
  module SlideTwo
    class << self
      def line_1
        'Cuando las personas se sienten desanimadas o decaídas se vuelven ' \
        'menos activas. Quizás algunas cosas que antes hacías sin dificultad,' \
        ' ahora requieren de ti un esfuerzo mucho más grande.'
      end
    end
  end

  # content specific to slide 3
  module SlideThree
    class << self
      def line_1
        'Nos referimos a actividades que haces todos los días, como trabajar,' \
        ' hacer los quehaceres de la casa, tomar tus medicamentos o ir al ' \
        'doctor.'
      end

      def line_2
        'Éste programa te ayudará a superar estas dificultades y a retomar ' \
        'estas actividades que son buenas para tu bienestar y tu salud.'
      end
    end
  end

  # content specific to slide 4
  module SlideFour
    class << self
      def line_1
        'Piensa en alguna actividad que antes disfrutabas mucho pero que has' \
        ' dejado de hacer o no haces con la misma frecuencia.'
      end

      def line_2
        'También pueden ser actividades saludables que antes disfrutabas, ' \
        'pero que últimamente has descuidado, como por ejemplo hacer deporte' \
        ' o comer comidas sanas.'
      end
    end
  end

  # content specific to slide 5
  module SlideFive
    class << self
      def line_1
        'Mira la siguiente lista de actividades placenteras y elige algunas.'
      end
    end
  end

  # content specific to slide 6
  module SlideSix
    class << self
      def line_1
        'Gracias por compartir esta información con nosotros.'
      end

      def line_2
        'Más adelante te daremos algunas ideas para que estas actividades ' \
        'sean nuevamente parte de tu vida.'
      end
    end
  end
end

# create reference
module Kernel
  def session_2_slide_1
    SessionTwo::SlideOne
  end

  def session_2_slide_2
    SessionTwo::SlideTwo
  end

  def session_2_slide_3
    SessionTwo::SlideThree
  end

  def session_2_slide_4
    SessionTwo::SlideFour
  end

  def session_2_slide_5
    SessionTwo::SlideFive
  end

  def session_2_slide_6
    SessionTwo::SlideSix
  end
end
