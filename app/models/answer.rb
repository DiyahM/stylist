class Answer < ActiveRecord::Base
  attr_accessible :points, :reply
  belongs_to :questions
  after_save :default_values

  private

  def default_values
    self.points ||= 0
  end
end
