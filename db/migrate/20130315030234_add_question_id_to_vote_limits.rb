class AddQuestionIdToVoteLimits < ActiveRecord::Migration
  def change
    add_column :vote_limits, :question_id, :integer
  end
end
