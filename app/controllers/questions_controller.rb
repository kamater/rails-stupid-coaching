class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    if @question.downcase == 'i am going to work'
      @reponse = 'Great'
    elsif @question.downcase.end_with?('?')
      @reponse = 'Silly question, get dressed and go to work!'
    else
      @reponse = 'I dont care, get dressed and go to work!'
    end
    @reponse
  end
end
