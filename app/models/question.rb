class Question < ActiveRecord::Base
  attr_accessible :description, :image_url, :answered, :title
  has_many :answers, :order => "points DESC", :dependent => :destroy
  before_create :default_values
  scope :unanswered, where(answered: false).order("created_at DESC")

  private

  def default_values
    self.answered ||= false
    self.image_url ||= "http://placehold.it/100x100&text=[img]"
  end
end
