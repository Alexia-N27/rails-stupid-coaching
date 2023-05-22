class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @answers = ['Great!', 'Silly question, get dressed and go to work!', "I don't care, get dressed and go to work!"]
    @question = params[:answer]

    if @question == 'I am going to work'
      @answer = @answers[0]
    elsif @question.include?('?')
      @answer = @answers[1]
    else
      @answer = @answers[2]
    end
  end
end
# Si le message est I am going to work, le coach répondra Great!.
# Si le message contient un point d’interrogation ? à la fin, le coach répondra Silly question, get dressed and go to work!.
# Sinon, le coach répondra I don't care, get dressed and go to work!.
