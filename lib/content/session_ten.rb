# content from session 10 for comparison in sessions_spec.rb
module SessionTen
  # content specific to slide 1
  module SlideOne
    class << self
      def line_1
        'La semana pasada intentamos encontrar las actividades que te daban ' \
        'más placer o alegría. Ahora queremos ayudarte a pensar en deberes ' \
        'y tareas.'
      end

      def line_2
        'Estas pueden ser también placenteras o divertidas, pero sobre todo' \
        ' te hacen sentir bien por haberlas realizado.'
      end
    end
  end

  # content specific to slide 2
  module SlideTwo
    class << self
      def line_1
        'Un buen inicio es empezar con cosas que te parezcan fáciles de hacer' \
        ' y que creas que puedes lograr.'
      end

      def line_2
        'Poco a poco ganarás la confianza necesaria para ir haciendo ' 
        'actividades más complejas.'
      end
    end
  end

  # content specific to slide 3
  module SlideThree
    class << self
      def line_1
        '¿Qué deberes y tareas puedes hacer en los siguientes días?'
      end

      def line_2
        'Puede ser algo muy sencillo, lo importante es empezar.'
      end

      def line_3
        'A continuación te mostramos una lista con ejemplos de actividades' \
        ' que a veces uno debe cumplir. Estas actividades pueden ser ' \
        'distintas para cada persona.'
      end
    end
  end

  # content specific to slide 4
  module SlideFour
    class << self
      def line_1
        'Luego de elegir tu actividad, debes abrir el calendario. Indica la ' \
        'fecha y la hora en la que planeas realizar la actividad elegida.'
      end
    end
  end
end

# initialize
module Kernel
  def session_10_slide_1
    SessionTen::SlideOne
  end

  def session_10_slide_2
    SessionTen::SlideTwo
  end

  def session_10_slide_3
    SessionTen::SlideThree
  end

  def session_10_slide_4
    SessionTen::SlideFour
  end
end
