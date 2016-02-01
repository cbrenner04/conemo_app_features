# content from session five that is compared in sessions_spec.rb
module SessionFive
  # content specific to slide 1
  module SlideOne
    class << self
      def line_1
        'Durante los últimos días has prestado atención a algunas actividades' \
        ' placenteras que últimamente han estado ausentes en tu vida.'
      end

      def line_2
        'Ahora te invitamos a pensar en otro tipo de actividades que son ' \
        'también importantes: los deberes y tareas.'
      end
    end
  end

  # content specific to slide 2
  module SlideTwo
    class << self
      def line_1
        'Son actividades que, al hacerlas, nos dan la sensación y ' \
        'satisfacción del deber cumplido.'
      end

      def line_2
        'Por ejemplo, terminar una tarea en la casa, ayudar a un familiar' \
        ' con un problema o cuidar tu salud: tomando tus medicaciones, ' \
        'haciendo ejercicios o comiendo más sanamente.'
      end
    end
  end

  # content specific to slide 3
  module SlideThree
    class << self
      def line_1
        'Realizar más actividades placenteras y deberes o tareas diariamente' \
        ' te ayudará a mejorar tu salud física y emocional.'
      end

      def line_2
        'Así te sentirás mejor contigo mismo.'
      end
    end
  end

  # content specific to slide 4
  module SlideFour
    class << self
      def line_1
        'Cuéntanos de alguna actividad o tarea que deberías haber hecho pero' \
        ' que que dejaste sin terminar.'
      end

      def line_2
        'Por ejemplo, pagar tus cuentas, hacer tareas de la casa, mejorar tu' \
        ' alimentación, todo es válido.'
      end
    end
  end

  # content specific to slide 5
  module SlideFive
    class << self
      def line_1
        'Revisa la siguiente lista de actividades y escoge 2 o 3 actividades ' \
        'que deberías cumplir, pero que has dejado de hacer.'
      end

      def line_2
        'Durante los próximos días, piensa cuáles son aquellos deberes y ' \
        'tareas que no has estado haciendo últimamente.'
      end
    end
  end

  # content specific to slide 6
  module SlideSix
    class << self
      def line_1
        'Identifica y recuerda especialmente aquellas que, si las hicieras,' \
        ' te harían sentir satisfecho y orgulloso de ti mismo y que te ' \
        'ayudarían a lograr tu objetivo en este programa.'
      end

      def line_2
        'Fíjate si es que tienes la oportunidad de hacerlas. ¡Recuerda estas' \
        ' oportunidades!'
      end
    end
  end
end

# create reference
module Kernel
  def session_5_slide_1
    SessionFive::SlideOne
  end

  def session_5_slide_2
    SessionFive::SlideTwo
  end

  def session_5_slide_3
    SessionFive::SlideThree
  end

  def session_5_slide_4
    SessionFive::SlideFour
  end

  def session_5_slide_5
    SessionFive::SlideFive
  end

  def session_5_slide_6
    SessionFive::SlideSix
  end
end
