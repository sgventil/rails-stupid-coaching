class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @coach = if params[:question].include?('?')
               'Silly question, get dressed and go to work!.'
             elsif params[:question].include?('I am going to work')
               'Great!'
             else
               'I dont care, get dressed and go to work!'
             end
  end
end
