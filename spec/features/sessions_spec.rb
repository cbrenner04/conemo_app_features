require 'spec_helper'

describe 'An authorized user' do
  it 'navigates to the session menu' do
    find('Sesiones').click
    wait { expect(driver.page_source).to include('1 ¡Bienvenido a CONEMO!') }
  end

  it 'completes the first session' do
    find('Inicio').click
    wait { expect(driver.page_source).to include('Este programa fue') }
    first_button.click
    wait { expect(driver.page_source).to include('Por eso, a veces dejamos') }
    click_next
    wait { expect(driver.page_source).to include('Te sugeriremos algunas') }
    click_next
    wait { expect(driver.page_source).to include('Queremos que te involucres') }
    click_next
    wait { expect(driver.page_source).to include('Así, combinando') }
    click_next
    wait { expect(driver.page_source).to include('Durante las 6 semanas') }
    click_next
    wait { expect(driver.page_source).to include('Para iniciar el vídeo') }
    click_play
    sleep(3)
    click_play
    click_next
    wait { expect(driver.page_source).to include('Has aceptado participar') }
    open_dropdown
    wait { choose_response }
    first_button.click
    wait { expect(driver.page_source).to include('2 selected') }
    click_next
    wait { expect(driver.page_source).to include('Esa es una muy buena') }
    click_next
    wait { expect(driver.page_source).to include('Sesiones') }
  end
end

def click_next
  execute_script 'mobile: tap', x: 890, y: 1845
end

def click_play
  execute_script 'mobile: tap', x: 563, y: 1268
end

def open_dropdown
  execute_script 'mobile: tap', x: 930, y: 1425
end

def choose_response
  checkbox = tags('android.widget.CheckedTextView')
  int = (0..6).to_a.sample(2)
  int.each do |i|
    checkbox[i].click
  end
end
