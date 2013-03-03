class QuestionsController < ApplicationController

  def home
    @questions = Question.unanswered.limit(3)
    @layout = "home"
  end

  def new
    @question = Question.new
  end

  def create
    if current_user
      @question = Question.create(params[:question])
      redirect_to root_url
    else
      session[:question] = params
      redirect_to modals_login_path
    end
  end

  def show
    @question = Question.find(params[:id])
    @answer = Answer.new
  end
end
