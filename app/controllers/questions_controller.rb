# This is the controller
class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    @coach_response = coach_answer_enhanced(@question)
  end

  private

  def coach_answer(question)
    if question == "I'm gonna work!"
      return'Ok great!'
    elsif question.include?('?')
      return'Silly question, get dressed and go to work!'
    else
      return "I don't care, get dressed and go to work!"
    end
  end

  def coach_answer_enhanced(question)
    if question == 'I am going to work!'
      return 'Great!'
    elsif question == question.upcase
      return 'I can feel your motivation!' + coach_answer(question)
    else
      coach_answer(question)
    end
  end

end
