class QuestionsController < ApplicationController

  def home
    @questions = Question.unanswered.limit(3)
    @layout = "home"
  end

  def index
    @questions = Question.unanswered
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
      flash[:notice] = "login"
      redirect_to root_url
    end
  end

  def show
    @question = Question.find(params[:id])
    @answer = Answer.new
  end
end
