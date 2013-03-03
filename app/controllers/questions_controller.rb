class QuestionsController < ApplicationController

  def home
    @questions = Question.unanswered.limit(4)
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
