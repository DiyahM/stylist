class QuestionsController < ApplicationController

  def open
    @questions = Question.open
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.create(params[:question])
    redirect_to root_url
  end
end
