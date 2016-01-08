# content from session 12 compared in session_spec.rb
module SessionTwelve
  # content specific to slide 1
  module SlideOne
    class << self
      def line_1
        'Muchas de nuestros comportamientos los hacemos de forma automática,' \
        ' casi sin darnos cuenta.'
      end

      def line_2
        'Muchas de nuestras tareas diarias se basan en hábitos.'
      end

      def line_3
        'Para cambiar estos hábitos, primero necesitas reconocerlos y ' \
        'planear cómo cambiarlos por algo diferente.'
      end
    end
  end

  # content specific to slide 2
  module SlideTwo
    class << self
      def line_1
        'Por ejemplo, en vez de ver televisión todas los noches, intenta ' \
        'hacer algo distinto algún día de la semana, como leer un libro, ' \
        'escuchar música o conversar con alguien.'
      end
    end
  end

  # content specific to slide 3
  module SlideThree
    class << self
      def line_1
        'Si eres más consciente de tus acciones y de tus hábitos, podrás ' \
        'tener la habilidad de elegir qué quieres hacer cada día, y, en ' \
        'consecuencia, sentirte diferente.'
      end

      def line_2
        'Si eres persistente, puedes crear nuevos hábitos.'
      end
    end
  end
end

# initialize
module Kernel
  def session_12_slide_1
    SessionTwelve::SlideOne
  end

  def session_12_slide_2
    SessionTwelve::SlideTwo
  end

  def session_12_slide_3
    SessionTwelve::SlideThree
  end
end
