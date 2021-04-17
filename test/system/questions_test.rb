require 'application_system_test_case'

class QuestionsTest < ApplicationSystemTestCase
  test 'visiting /ask renders the form' do
    visit ask_url
    assert_selector 'h3', text: 'Ask your coach anything'
  end

  test 'saying Hello yields a grumpy response from the coach' do
    visit ask_url
    fill_in 'question', with: 'Hello'
    click_on 'Ask'

    assert_text "I don't care, get dressed and go to work!"
  end

  test 'saying a sentence in ALL CAPS yields a motivation response from the coach' do
    visit ask_url
    fill_in 'question', with: 'HELLO'
    click_on 'Ask'

    assert_text 'I can feel your motivation!'
  end
end
