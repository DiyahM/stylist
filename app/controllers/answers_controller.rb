class AnswersController < ApplicationController
  
  def create
    if current_user
      question = Question.find(params["question_id"])
      answer = question.answers.build(params["answer"])
      answer.user_id = current_user.id
      answer.save
      if answer.save
        redirect_to question_path(question.id)
      else
        redirect_to request.referer
      end
    else
      session[:answer] = params
      redirect_to modals_login_path
    end
  end

  def vote
    answer = Answer.find(params["answer_id"])
    if params["up"] == "true"
      answer.vote_up
    else
      answer.vote_down
    end
    redirect_to question_path(answer.question_id)
  end

end
