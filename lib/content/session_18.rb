# content from session eighteen compared in sessions_spec.rb
module SessionEighteen
  # content specific to slide 1
  module SlideOne
    class << self
      def line_1
        '¡Continúa realizando las actividades que te hicieron sentir mejor!'
      end

      def line_2
        'Tener un estilo de vida saludable y lograr cambios importantes ' \
        'requieren de tiempo y de esfuerzo. Si continúas haciendo tus ' \
        'actividades y usando las habilidades que has aprendido hasta ahora,' \
        ' tendrás una mejor salud física y emocional.'
      end
    end
  end

  # content specific to slide 2
  module SlideTwo
    class << self
      def line_1
        'Ésta es la última sesión de CONEMO.'
      end

      def line_2
        'Esperamos que participar en este programa te haya servido para ' \
        'sentirte mejor.'
      end

      def line_3
        'Si quieres revisar alguna de las sesiones nuevamente, estarán todas' \
        ' a tu disposición en este mismo programa.'
      end
    end
  end

  # content specific to slide 3
  module SlideThree
    class << self
      def line_1
        'Dentro de poco te contactaramos para programar una cita para que ' \
        'puedas reunirte con el equipo de investigación del proyecto.'
      end

      def line_2
        'El equipo de investigación quiere saber cómo estás y cómo fue tu ' \
        'experiencia de participar en nuestro programa.'
      end
    end
  end

  # content specific to slide 4
  module SlideFour
    class << self
      def line_1
        'Al final de la conversación deberás entregar el teléfono que has ' \
        'usado durante estas semanas en el programa.'
      end
    end
  end

  # content specific to slide 5
  module SlideFive
    class << self
      def line_1
        'Esperamos que participar te haya servido y que te sientas mejor ahora.'
      end

      def line_2
        '¡Sigue para adelante realizando tus actividades diarias!'
      end
    end
  end
end

# create reference
module Kernel
  def session_18_slide_1
    SessionEighteen::SlideOne
  end

  def session_18_slide_2
    SessionEighteen::SlideTwo
  end

  def session_18_slide_3
    SessionEighteen::SlideThree
  end

  def session_18_slide_4
    SessionEighteen::SlideFour
  end

  def session_18_slide_5
    SessionEighteen::SlideFive
  end
end
