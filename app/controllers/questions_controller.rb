class QuestionsController < ApplicationController

  def open
    @questions = Question.open.limit(15)
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
  end
end
