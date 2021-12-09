class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @answer = params[:question]
    @coach_answer = coach_answer_enhanced(@answer)
  end

  def coach_answer(your_message)
    # TODO: return coach answer to your_message
    if your_message.downcase == "i am going to work right now!"
      return ""
    elsif your_message[your_message.length - 1] == "?"
      return "Silly question, get dressed and go to work!"
    else
      return "I don't care, get dressed and go to work!"
    end
  end

  def coach_answer_enhanced(your_message)
    answer = coach_answer(your_message)
    if answer == ""
      ""
    elsif your_message.upcase == your_message
      "I can feel your motivation! #{answer}"
    else
      answer
    end
  end

end
