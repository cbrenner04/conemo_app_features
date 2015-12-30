require 'spec_helper'

describe 'An authorized user' do
  it 'asks for hlep' do
    find('Solicitar ayuda').click
    find('Ask for Help').click
    wait do
      expect(driver.page_source)
        .to include('Gracias. Tu mensaje ha sido enviado. Tu enfermera o ' \
                    'enfermero te llamará pronto.')
    end
    first_button.click
    wait { expect(driver.page_source).to include('Sesiones') }
  end
end
