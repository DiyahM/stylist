class User < ActiveRecord::Base
  attr_accessible :name, :oauth_expires_at, :oauth_token, :provider, :uid, :profile_picture_url, :points
  has_many :questions, :order => "created_at DESC", :dependent => :destroy 
  has_many :answers, :order => "created_at DESC", :dependent => :destroy
  has_many :vote_limits, :dependent => :destroy

  
  def self.from_omniauth(auth)
    where(auth.slice(:provider, :uid)).first_or_initialize.tap do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.name = auth.info.name
      user.oauth_token = auth.credentials.token
      user.oauth_expires_at = Time.at(auth.credentials.expires_at)
      if auth.provider = "facebook"
        user.profile_picture_url = "https://graph.facebook.com/#{auth.uid}/picture?width=463"
      else 
        user.profile_picture_url = "/default_image.jpg"
      end
      user.points = 0
      user.save!
    end
  end

  def votes(question_id)
    vote_limit = self.vote_limits.where(question_id: question_id).first
    if vote_limit.nil?
      self.vote_limits.create(question_id: question_id, votes: 1)
      return true
    else
      if vote_limit.votes > 2
        return false
      else
        vote_limit.votes += 1
        vote_limit.save
        return true
      end
    end
  end
 
end
