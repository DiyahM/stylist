class CreateVoteLimits < ActiveRecord::Migration
  def change
    create_table :vote_limits do |t|

      t.timestamps
    end
  end
end
