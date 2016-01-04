# filename: ./spec/features/sessions_spec.rb

describe 'An authorized user' do
  it 'navigates to the session menu' do
    session.open
    wait { expect(driver.page_source).to include('1 ¡Bienvenido a CONEMO!') }
  end

  it 'completes the first session' do
    session.start
    wait { expect(driver.page_source).to include('Este programa fue') }

    session.click_next
    wait { expect(driver.page_source).to include('Por eso, a veces dejamos') }

    session.click_next
    wait { expect(driver.page_source).to include('Te sugeriremos algunas') }

    session.click_next
    wait { expect(driver.page_source).to include('Queremos que te involucres') }

    session.click_next
    wait { expect(driver.page_source).to include('Así, combinando') }

    session.click_next
    wait { expect(driver.page_source).to include('Durante las 6 semanas') }

    session.click_next
    wait { expect(driver.page_source).to include('Para iniciar el vídeo') }

    session.click_play
    sleep(3)
    session.click_play
    session.click_next
    wait { expect(driver.page_source).to include('Has aceptado participar') }

    session.open_dropdown
    wait { session.choose_response }
    session.submit_response
    wait { expect(driver.page_source).to include('2 selected') }

    session.click_next
    wait { expect(driver.page_source).to include('Esa es una muy buena') }

    session.return_to_session_page
    wait { expect(driver.page_source).to include('Sesiones') }
  end
end
