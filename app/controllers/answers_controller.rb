class AnswersController < ApplicationController
  def create
    question = Question.find(params["question_id"])
    question.answers.build(params["answer"])
    question.save
    redirect_to question_path(question.id)
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
