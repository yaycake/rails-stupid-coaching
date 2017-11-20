class QuestionsController < ApplicationController
  def answer
    @your_message = params[:your_message]
    if @your_message.end_with?("?")
      @coach_answer = "Silly question, get dressed and go to work!"
    elsif @your_message.downcase == "i am going to work right now"
      @coach_answer = ''
    else
      @coach_answer = "I don't care, get dressed and go to work!"
    end
  end

  def ask
    @your_message = params[:your_message]
    puts @your_message
  end
end
