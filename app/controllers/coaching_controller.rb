class CoachingController < ApplicationController
  def answer
    @question = params[:query]
    @coach_answer = coach_answer(@question)
    @link = "ask"
  end

  def ask
  end


  def coach_answer (user_message)
    if user_message == "I am going to work right now!"
      return ""
    elsif user_message.include? ("?")
      return "Silly question, get dressed and go to work!"
          else
            return "I don't care, get dressed and go to work!"
    end
  end




end

