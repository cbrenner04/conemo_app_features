# filename: ./spec/features/training_spec.rb

describe 'An authorized user' do
  before(:all) do
    start_driver
    configure_participant('test')
  end

  after(:all) do
    driver_quit
  end

  it 'views the training session' do
    training.open
    wait { expect(driver.page_source).to include('CONEMO es un programa') }
    10.times { training.scroll_down }
    10.times { training.scroll_up }
    home.return_home
    home.assert_on_page
  end
end
