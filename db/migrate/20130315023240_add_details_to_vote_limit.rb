class AddDetailsToVoteLimit < ActiveRecord::Migration
  def change
    add_column :vote_limits, :user_id, :integer
    add_column :vote_limits, :answer_id, :integer
    add_column :vote_limits, :votes, :integer
  end
end
