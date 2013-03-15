class RemoveAnswerIdFromVoteLimits < ActiveRecord::Migration
  def up
    remove_column :vote_limits, :answer_id
  end

  def down
    add_column :vote_limits, :answer_id, :integer
  end
end
