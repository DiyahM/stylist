class Answer < ActiveRecord::Base
  attr_accessible :points, :reply
  belongs_to :questions
  belongs_to :user
  before_create :default_values
  validates :user_id, presence: true
  validates :reply, presence: true

  def vote_up
    self.points +=1
    self.save
  end

  def vote_down
    self.points -=1
    self.save
  end

  private

  def default_values
    self.points ||= 0
  end
end
