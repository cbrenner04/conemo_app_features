# filename: ./spec/features/training_spec.rb

describe 'An authorized user' do
  it 'views the training session' do
    training.open
    wait { expect(driver.page_source).to include('CONEMO es un programa') }
    10.times { training.scroll_down }
    10.times { training.scroll_up }
    home.return_home
    home.assert_on_page
  end
end
