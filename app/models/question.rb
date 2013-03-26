class Question < ActiveRecord::Base
  attr_accessible :description, :image_url, :answered, :title, :tag_ids
  has_many :answers, :order => "points DESC", :dependent => :destroy
  belongs_to :user
  has_and_belongs_to_many :tags
  before_create :default_values
  validates :user_id, presence: true
  validates :image_url, presence: true
  validates :title, presence: true
  accepts_nested_attributes_for :tags

  scope :unanswered, where(answered: false).order("created_at DESC")

  private

  def default_values
    self.answered ||= false
    self.image_url ||= "/default-image.jpg"
  end
end
