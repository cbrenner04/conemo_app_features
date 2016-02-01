# filename: ./spec/features/instructions_spec.rb

describe 'An authorized user' do
  it 'reads the instructions' do
    instructions.open
    wait { expect(driver.page_source).to include('¿Cómo funciona el aplicat') }
    4.times { instructions.scroll_down }
    4.times { instructions.scroll_up }
    home.return_home
    wait { expect(driver.page_source).to include('Sesiones') }
  end
end
