# content for session eight compared in sessions_spec.rb
module SessionEight
  # content for slide 1
  module SlideOne
    class << self
      def line_1
        'Sabemos que empezar a hacer actividades nuevas puede ser difícil, ' \
        'aún siendo actividades placenteras.'
      end

      def line_2
        'En estos momentos es posible que pienses: ¨No tengo ganas en hacer' \
        ' nada¨ o ¨debería usar mi tiempo en cosas más importantes¨.'
      end
    end
  end

  # content for slide 2
  module SlideTwo
    class << self
      def line_1
        'Estos pensamientos son comunes cuando nos piden hacer actividades' \
        ' que no están en nuestra rutina.'
      end
    end
  end

  # content for slide 3
  module SlideThree
    class << self
      def line_1
        'Si no estás segura o seguro de comenzar una nueva actividad, tómate' \
        ' unos minutos para recordar tus objetivos para este programa.'
      end

      def line_2
        'Realizar actividades o ser una persona activa puede ser el primer ' \
        'paso hacia tener una vida más saludable y feliz.'
      end
    end
  end
end

# initialize
module Kernel
  def session_8_slide_1
    SessionEight::SlideOne
  end

  def session_8_slide_2
    SessionEight::SlideTwo
  end

  def session_8_slide_3
    SessionEight::SlideThree
  end
end
