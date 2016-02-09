# content for session one which is compared in sessions_spec.rb
module SessionOne
  # content specific to slide one
  module SlideOne
    class << self
      def line_1
        '¡Bienvenido a CONEMO!'
      end

      def line_2
        'Este programa fue desarrollado para ayudarte a mejorar tu salud ' \
        'física y emocional.'
      end

      def line_3
        'Cuando tenemos algún problema de salud, como diabetes o ' \
        'hipertensión, es común que nos sintamos desanimados o con poca ' \
        'energía para hacer las cosas.'
      end
    end
  end

  # content specific to slide two
  module SlideTwo
    class << self
      def line_1
        'Por eso, a veces dejamos de hacer nuestras actividades y otras ' \
        'veces dejamos cosas importantes sin terminar.'
      end

      def line_2
        'El objetivo de CONEMO es ayudarte a que mejores tu salud física y ' \
        'emocional, practicando actividades que te harán sentir mas sano, ' \
        'fuerte y feliz.'
      end
    end
  end

  # content specific to slide three
  module SlideThree
    class << self
      def line_1
        'Te sugeriremos algunas actividades para mejorar tu salud física, ' \
        'como tomar tu medicación o comer más sano.'
      end

      def line_2
        'Otras actividades tienen la finalidad de aumentar tu motivación, ' \
        'elevar tu estado de ánimo y lograr que estés más feliz.'
      end
    end
  end

  # content specific to slide four
  module SlideFour
    class << self
      def line_1
        'Queremos que te involucres en actividades que te hagan sentir más ' \
        'feliz y motivado.'
      end

      def line_2
        'Por ejemplo, probar nuevas actividades en tu tiempo libre o pasar ' \
        'más tiempo con tus seres queridos u otras cosas que puedas disfrutar.'
      end
    end
  end

  # content specific to slide five
  module SlideFive
    class << self
      def line_1
        'Así combinando actividades para mejorar tu salud física y tu salud ' \
        'emocional, tendrás una vida más satisfactoria y feliz.'
      end
    end
  end

  # content specific to slide six
  module SlideSix
    class << self
      def line_1
        'Durante las 6 semanas que dura este programa, una enfermera o ' \
        'enfermero te acompañará, motivándote y aclarando tus dudas. Así, ' \
        'podrás sacar lo máximo de este programa.'
      end
    end
  end

  # content specific to slide seven
  module SlideSeven
    class << self
      def line_1
        'Para iniciar el vídeo, por favor, presiona el triángulo debajo del ' \
        'vídeo.'
      end
    end
  end

  # content specific to slide eight
  module SlideEight
    class << self
      def line_1
        'Has aceptado participar en CONEMO por algún motivo.'
      end

      def line_2
        '¡Cuéntanos por qué te gustaría tener una vida más saludable!'
      end

      def line_3
        'Presione el rectángulo blanco y elige una o varias de las siguientes' \
        ' opciones:'
      end
    end
  end

  # content specific to slide nine
  module SlideNine
    class << self
      def line_1
        'Esa es una muy buena razón.'
      end

      def line_2
        'Es importante que recuerdes siempre por qué te gustaría tener una ' \
        'vida más saludable.'
      end

      def line_3
        'Ésta será una motivación importante para realizar tus actividades, ' \
        'aun cuando tengas que hacer cosas que sean difíciles al comienzo.'
      end
    end
  end
end

# create reference
module Kernel
  def session_1_slide_1
    SessionOne::SlideOne
  end

  def session_1_slide_2
    SessionOne::SlideTwo
  end

  def session_1_slide_3
    SessionOne::SlideThree
  end

  def session_1_slide_4
    SessionOne::SlideFour
  end

  def session_1_slide_5
    SessionOne::SlideFive
  end

  def session_1_slide_6
    SessionOne::SlideSix
  end

  def session_1_slide_7
    SessionOne::SlideSeven
  end

  def session_1_slide_8
    SessionOne::SlideEight
  end

  def session_1_slide_9
    SessionOne::SlideNine
  end
end
