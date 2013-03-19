class PagesController < ApplicationController
  before_filter :set_layout, except: [:retailers]

  def retailers

  end

  def bookmarklet

  end

  def login
    
  end

  def image_picker
    @logged_in = current_user
    @images = JSON.parse(params["images"])
    @question = Question.new
  end

  private

  def set_layout
    @layout = "modal"
  end
end
