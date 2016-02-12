# content from session 15 compared in sessions_spec.rb
module SessionFifteen
  # content specific to slide 1
  module SlideOne
    class << self
      def line_1
        'Alcanzar tu objetivo te ayudará a sentirte mejor y a tener una vida' \
        ' más saludable.'
      end

      def line_2
        'Ahora que tienes una lista de actividades, planea cuándo las vas a ' \
        'hacer.'
      end

      def line_3
        'Recuerda lo bien que te sentiste cuando hiciste alguna de las ' \
        'tareas que habías planeado.'
      end

      def line_4
        '¡Por eso, continúa!'
      end
    end
  end
end

# create reference
module Kernel
  def session_15_slide_1
    SessionFifteen::SlideOne
  end
end
