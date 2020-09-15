class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @coaching_answer = [""]

      if params[:answer].split(//).last == "?"
        @coaching_answer = 'Silly question, get dressed and go to work!'
      elsif params[:answer] == "I am going to work"
        @coaching_answer = "Great!"
      else
        @coaching_answer = "I don't care, get dressed and go to work!"
      end
  end
end
