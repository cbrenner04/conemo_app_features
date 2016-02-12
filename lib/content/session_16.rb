# content from session 16 compared in sessions_spec.rb
module SessionSixteen
  # content specific to slide 1
  module SlideOne
    class << self
      def line_1
        'Por lo general, los cambios importantes no ocurren de un día para' \
        ' el otro, sino que toman tiempo.'
      end

      def line_2
        'Por eso, a veces es difícil darse cuenta de que estos cambios están' \
        ' sucediendo.'
      end

      def line_3
        'Es importante que recuerdes todo lo que has aprendido y crecido ' \
        'hasta el momento.'
      end
    end
  end

  # content specific to slide 2
  module SlideTwo
    class << self
      def line_1
        'Valora los cambios que has logrado, aunque algunos te parezcan ' \
        'pequeños.'
      end

      def line_2
        'Ya sabes que pequeños cambios pueden ser el inicio de grandes ' \
        'cambios a lo largo del tiempo.'
      end

      def line_3
        'Pensar en las cosas que no pudiste hacer te ayudarán a aprender' \
        ' algo, pero no gastes mucho tiempo en esto.'
      end
    end
  end

  # content specific to slide 3
  module SlideThree
    class << self
      def line_1
        'Sigue adelante para que puedas alcanzar cambios más importantes y ' \
        'tener una vida cada vez más saludable y feliz.'
      end

      def line_2
        'Sabemos que tomará un tiempo hasta que estos nuevos comportamientos' \
        ' sean parte de tu rutina diaria, pero si eres persistente, será cada' \
        ' vez más fácil y más natural.'
      end
    end
  end

  # content specific to slide 4
  module SlideFour
    class << self
      def line_1
        'Para iniciar el vídeo, por favor, presiona el triángulo debajo del ' \
        'vídeo.'
      end
    end
  end
end

# intialize
module Kernel
  def session_16_slide_1
    SessionSixteen::SlideOne
  end

  def session_16_slide_2
    SessionSixteen::SlideTwo
  end

  def session_16_slide_3
    SessionSixteen::SlideThree
  end

  def session_16_slide_4
    SessionSixteen::SlideFour
  end
end
