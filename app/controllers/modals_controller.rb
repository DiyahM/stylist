class ModalsController < ApplicationController
  before_filter :set_layout

  def bookmarklet

  end

  def login
    
  end

  def image_picker
    @images = params[:images]
  end

  private

  def set_layout
    @layout = "modal"
  end
end
