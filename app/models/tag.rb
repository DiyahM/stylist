class Tag < ActiveRecord::Base
  attr_accessible :count, :title
  has_and_belongs_to_many :questions
  validates :title, :presence => true
end
