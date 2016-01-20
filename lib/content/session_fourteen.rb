# content from Session 14 compared in session_spec.rb
module SessionFourteen
  # content specific to slide 1
  module SlideOne
    class << self
      def line_1
        '¡Un paso a la vez!'
      end

      def line_2
        'Para iniciar el vídeo, por favor, presiona el triángulo debajo del' \
        ' vídeo.'
      end
    end
  end

  # content specific to slide 2
  module SlideTwo
    class << self
      def line_1
        'Si esta semana elegiste una actividad para mejorar tu salud, pero ' \
        'ésta es muy difícil o muy grande, recuerda que puedes dividirla en ' \
        'pequeños pasos o pequeñas tareas y escoger una para comenzar.'
      end

      def line_2
        'Si ya has realizado la actividad elegida para esta semana, ¿por qué' \
        ' no eliges otra para practicar la nueva estrategia que acabas de ' \
        'aprender?'
      end
    end
  end

  # content specific to slide 3
  module SlideThree
    class << self
      def line_1
        'Inserta acá la actividad elegida, luego, en el calendario, indica la' \
        ' fecha y la hora en la que planeas realizarla.'
      end
    end
  end
end

# create reference
module Kernel
  def session_14_slide_1
    SessionFourteen::SlideOne
  end

  def session_14_slide_2
    SessionFourteen::SlideTwo
  end

  def session_14_slide_3
    SessionFourteen::SlideThree
  end
end
