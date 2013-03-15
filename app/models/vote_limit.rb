class VoteLimit < ActiveRecord::Base
  attr_accessible :votes, :user_id, :question_id
end
