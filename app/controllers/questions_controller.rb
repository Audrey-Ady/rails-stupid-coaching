class QuestionsController < ApplicationController
  def ask; end
  def home; end
  def answer
    # récupérer la question dans l'url
    question = params[:question]
    # si la question est = à I am going to work alors retourner Great
    if question == 'I am going to work'
      @answer = "Great!"
    elsif question[-1] == '?'
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
