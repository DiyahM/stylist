class ModalsController < ApplicationController

  def bookmarklet

  end

  def image_picker
    @images = params[:images]
  end
end
