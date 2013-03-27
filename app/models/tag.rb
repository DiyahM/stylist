class Tag < ActiveRecord::Base
  attr_accessible :count, :title
  has_and_belongs_to_many :questions
  validates :title, :presence => true
  validates :title, :uniqueness => true

  def self.create_or_find(key)
    t = Tag.where(title: key).first_or_create(count:0)
  end
end
