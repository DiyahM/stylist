class Question < ActiveRecord::Base
  attr_accessible :description, :image_url, :answered, :title
  scope :open, where(answered: false).order("created_at DESC")
end
