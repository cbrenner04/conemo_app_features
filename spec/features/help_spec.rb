# filenmae: ./spec/features/help_spec.rb

describe 'An authorized user' do
  it 'asks for help' do
    help.open
    help.ask_for_help
    wait do
      expect(driver.page_source)
        .to include('Muchas gracias. La enfermera ha sido contactada. Ella' \
                    ' te llamará dentro de los siguientes 2 días laborales.')
    end
    home.return_home
    wait { expect(driver.page_source).to include('Sesiones') }
  end
end
