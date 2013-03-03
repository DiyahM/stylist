class AnswersController < ApplicationController
  def create
    question = Question.find(params["question_id"])
    question.answers.build(params["answer"])
    question.save
    redirect_to question_path(question.id)
  end
end
