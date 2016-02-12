# content from session 13 compared in sessions_spec.rb
module SessionThirteen
  # content specific to slide 1
  module SlideOne
    class << self
      def line_1
        'Esperamos que la semana pasada hayas podido hacer alguna actividad' \
        ' positiva.'
      end

      def line_2
        'Aunque haya sido solo pequeña es importante. Pequeños pasos pueden' \
        ' generar grandes cambios.'
      end

      def line_3
        'Ahora queremos que pienses en actividades nuevas que pueden mejorar' \
        ' tu salud.'
      end
    end
  end

  # content specific to slide 2
  module SlideTwo
    class << self
      def line_1
        'Tal vez podrías salir a caminar o a correr, practicar algún deporte,' \
        ' ir al gimnasio o seguir una dieta sana.'
      end

      def line_2
        'Estas actividades pueden ayudarte a mejorar tu salud física.'
      end
    end
  end

  # content specific to slide 3
  module SlideThree
    class << self
      def line_1
        'Recuerda: mejorar tu salud física también puede mejorar tu salud ' \
        'emocional y hacer que te sientas mejor contigo mismo.'
      end

      def line_2
        '¿Te animas a empezar con alguna de estas actividades?'
      end

      def line_3
        '¡Este cambio mejorará tu salud!'
      end
    end
  end

  # content specific to slide 4
  module SlideFour
    class << self
      def line_1
        '¿Qué actividad te gustaría experimentar para mejorar tu salud?'
      end

      def line_2
        'Elige una actividad de la siguiente lista.'
      end
    end
  end

  # content specific to slide 5
  module SlideFive
    class << self
      def line_1
        'Luego, en el calendario, indica la fecha y la hora en la que planeas' \
        ' realizar la actividad elegida.'
      end
    end
  end
end

# create reference
module Kernel
  def session_13_slide_1
    SessionThirteen::SlideOne
  end

  def session_13_slide_2
    SessionThirteen::SlideTwo
  end

  def session_13_slide_3
    SessionThirteen::SlideThree
  end

  def session_13_slide_4
    SessionThirteen::SlideFour
  end

  def session_13_slide_5
    SessionThirteen::SlideFive
  end
end
