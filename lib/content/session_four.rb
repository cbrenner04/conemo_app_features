# content for session 4 which is compared in sessions_spec.rb
module SessionFour
  # content specific to slide 1
  module SlideOne
    class << self
      def line_1
        'Las actividades placenteras son aquellas que nos hacen sentir bien.'
      end

      def line_2
        'Para algunas personas es escuchar música, para otras es pasar tiempo' \
        ' con los amigos o la familia, o salir a caminar.'
      end
    end
  end

  # content specific to slide 2
  module SlideTwo
    class << self
      def line_1
        'Revisa la siguiente lista de actividades y escoge 2 o 3 actividades' \
        ' placenteras que antes hacías con frecuencia, PERO que ya NO estás' \
        ' haciendo.'
      end

      def line_2
        'Durante los próximos días, fíjate si es que tienes la oportunidad ' \
        'de hacerlas'
      end

      def line_3
        '¡Recuerda estas oportunidades!'
      end
    end
  end
end

# initialize
module Kernel
  def session_4_slide_1
    SessionFour::SlideOne
  end

  def session_4_slide_2
    SessionFour::SlideTwo
  end
end
