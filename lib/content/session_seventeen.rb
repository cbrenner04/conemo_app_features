# content from Session 17 compared in sessions_spec.rb
module SessionSeventeen
  # content specific to slide 1
  module SlideOne
    class << self
      def line_1
        'Las cosas que son realmente importantes en nuestra vida requieren' \
        ' de tiempo y esfuerzo para ser alcanzadas.'
      end

      def line_2
        'Cambiar tu estilo de vida no es fácil. Necesitas hacer una rutina y' \
        ' continuar con ella a pesar de que tengas imprevistos y dificultades.'
      end
    end
  end

  # content specific to slide 2
  module SlideTwo
    class << self
      def line_1
        'Solo aquello que hagas con frecuencia, se convertirá en una costumbre.'
      end

      def line_2
        '¡Pasito a pasito se construye algo grande!'
      end
    end
  end
end

# initialize
module Kernel
  def session_17_slide_1
    SessionSeventeen::SlideOne
  end

  def session_17_slide_2
    SessionSeventeen::SlideTwo
  end
end
