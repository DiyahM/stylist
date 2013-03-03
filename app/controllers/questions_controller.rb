class QuestionsController < ApplicationController

<<<<<<< HEAD
  def open
    @questions = Question.open.limit(15)
=======
  def home
    @questions = Question.unanswered.limit(4)
>>>>>>> efac0253fc25a3deb31ac38ab64b96e1239ee066
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.create(params[:question])
    redirect_to root_url
  end

  def show
    @question = Question.find(params[:id])
    @answer = Answer.new
  end
end
