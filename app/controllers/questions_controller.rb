class QuestionsController < ApplicationController

  def home
    @questions = Question.unanswered.limit(12)
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
      @question = current_user.questions.create(params[:question])
      current_user.points += 1
      current_user.save
      if @question.save
        @question.update_tags
        redirect_to question_path(@question.id)
      else
        redirect_to request.referer
      end
    else
      session[:question] = params
      redirect_to modals_login_path
    end
  end

  def destroy
    Question.find(params[:id]).destroy
    redirect_to questions_path
  end
  def show
    @question = Question.find(params[:id])
    @answer = Answer.new
  end
end
