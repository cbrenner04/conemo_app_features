# content from session 11 which is compared in sessions_spec.rb
module SessionEleven
  # content specific to slide 1
  module SlideOne
    class << self
      def line_1
        'Cuando te sientas sin energía o con mucho cansancio, es importante' \
        ' intentar hacer las cosas más despacio, un paso a la vez.'
      end

      def line_2
        'Eso significa que vayas a tu propio ritmo y que planifiques tus' \
        ' actividades de tal manera que no tengas que hacer todo al mismo ' \
        'tiempo, sino poco a poco.'
      end
    end
  end

  # content specific to slide 2
  module SlideTwo
    class << self
      def line_1
        'También significa saber con anticipación cuándo estarás con muchas' \
        ' tareas y asegurarte de no empezar a hacer más cosas de las que ' \
        'puedes manejar.'
      end

      def line_2
        'Cuidarte es aprender a conocer y respetar tus propios límites.'
      end
    end
  end
end

# create reference
module Kernel
  def session_11_slide_1
    SessionEleven::SlideOne
  end

  def session_11_slide_2
    SessionEleven::SlideTwo
  end
end
