class SessionsController < ApplicationController

  def create
    user = User.from_omniauth(env["omniauth.auth"])
    session[:user_id] = user.id

    if session[:question].present?
      @question = Question.create(session[:question]["question"])
      redirect_to question_path(@question.id)
    elsif session[:answer].present?
      question = Question.find(session[:answer]["question_id"])
      question.answers.build(session[:answer]["answer"])
      question.save
      redirect_to question_path(question.id) 
    else
      redirect_to root_url
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url
  end
end
