# filenmae: ./spec/features/help_spec.rb

describe 'An authorized user' do
  before(:all) do
    start_driver
    configure_participant('test')
  end

  after(:all) do
    driver_quit
  end

  it 'asks for help' do
    help.open
    help.ask_for_help
    wait { expect(driver.page_source).to include('Gracias. Tu mensaje ha') }
    home.return_home
    wait { expect(driver.page_source).to include('Sesiones') }
  end
end
