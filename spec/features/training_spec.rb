require 'spec_helper'

describe 'An authorized user' do
  it 'views the training session' do
    training.open
    wait { expect(driver.page_source).to include('CONEMO es un programa') }
    first_button.click
    home.assert_on_page
  end
end
