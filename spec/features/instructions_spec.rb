require 'spec_helper'

describe 'An authorized user' do
  it 'reads the instructions' do
    find('Instrucciones').click
    wait do
      expect(driver.page_source).to include('¿Cómo funciona el aplicativo?')
    end
    3.times do
      Appium::TouchAction
        .swipe(start_x: 630, start_y: 1610,
               end_x: 540, end_y: 1090, duration: 200)
      sleep(2)
    end
    3.times do
      Appium::TouchAction
        .swipe(start_x: 540, start_y: 1090,
               end_x: 630, end_y: 1610, duration: 200)
      sleep(2)
    end
    first_button.click
    wait { expect(driver.page_source).to include('Sesiones') }
  end
end
