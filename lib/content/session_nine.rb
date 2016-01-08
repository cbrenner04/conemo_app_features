# content from session nine compared in sessions_spec.rb
module SessionNine
  # content specific to slide 1
  module SlideOne
    class << self
      def line_1
        'Has tenido casi una semana realizando actividades placenteras.'
      end

      def line_2
        '¿Te parecieron más divertidas de lo que esperabas?'
      end

      def line_3
        '¿O quizás fueron más difíciles de lo que imaginabas?'
      end
    end
  end

  # content specific to slide 2
  module SlideTwo
    class << self
      def line_1
        'Ahora es el momento de probar qué actividades son las que te hacen' \
        ' sentir mejor.'
      end

      def line_2
        'Si alguna de las actividades de esta semana te ha hecho sentir muy ' \
        'bien, deberías seguir haciéndola.'
      end

      def line_3
        'Las que no te funcionaron bien, reemplázalas por otras actividades ' \
        'y presta atención a cómo te hacen sentir.'
      end
    end
  end

  # content specific to slide 3
  module SlideThree
    class << self
      def line_1
        'Es importante que intentes realizar diferentes actividades para ' \
        'descubrir cuáles te hacen sentir bien, saludable y feliz.'
      end

      def line_2
        'Incluso aquellas que no te gusten, te habrán ayudado a conocerte ' \
        'mejor.'
      end

      def line_3
        'Sigue experimentando para encontrar nuevas maneras para sentirte ' \
        'bien y estar sano.'
      end
    end
  end
end

# initialize
module Kernel
  def session_9_slide_1
    SessionNine::SlideOne
  end

  def session_9_slide_2
    SessionNine::SlideTwo
  end

  def session_9_slide_3
    SessionNine::SlideThree
  end
end
