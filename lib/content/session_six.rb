# content for session 6 that is compared in sessions_spec.rb
module SessionSix
  # content specific to slide 1
  module SlideOne
    class << self
      def line_1
        'Durante los últimos días, has prestado atención a actividades ' \
        'placenteras, así como deberes y tareas que has dejado de hacer.'
      end

      def line_2
        'Ahora te invitamos a pensar en actividades que te ayudarán a mejorar' \
        ' tu salud.'
      end

      def line_3
        'Recuerda que mejorar tu salud física mejorará también tu salud ' \
        'emocional.'
      end
    end
  end

  # content specific to slide 2
  module SlideTwo
    class << self
      def line_1
        'Algunas personas creen que no está en sus manos mejorar su salud o' \
        ' que esto es muy difícil de lograr. ¡Eso no es verdad!'
      end
    end
  end

  # content specific to slide 3
  module SlideThree
    class << self
      def line_1
        'Actividades sencillas o cambios pequeños pueden hacer una gran ' \
        'diferencia. Caminar 30 minutos al día o comer una porción de ' \
        'frutas y otra de verduras son solo dos ejemplos de actividades que ' \
        'pueden mejorar tu salud en general.'
      end
    end
  end

  # content specific to slide 4
  module SlideFour
    class << self
      def line_1
        '¿Qué actividad te gustaría intentar para mejorar tu salud?'
      end

      def line_2
        'Mira la siguiente lista y elige alguna.'
      end
    end
  end

  # content specific to slide 5
  module SlideFive
    class << self
      def line_1
        'El objetivo de las próximas semanas es incluir, poco a poco, nuevas' \
        ' actividades en tu vida diaria.'
      end

      def line_2
        'Ser más activo te ayudará a sentirte más animado y mejor contigo ' \
        'mismo. ¡Ya lo verás!'
      end
    end
  end
end

# initialize
module Kernel
  def session_6_slide_1
    SessionSix::SlideOne
  end

  def session_6_slide_2
    SessionSix::SlideTwo
  end

  def session_6_slide_3
    SessionSix::SlideThree
  end

  def session_6_slide_4
    SessionSix::SlideFour
  end

  def session_6_slide_5
    SessionSix::SlideFive
  end
end
