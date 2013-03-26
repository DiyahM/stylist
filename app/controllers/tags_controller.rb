class TagsController < ApplicationController

  respond_to :html, :json, :xml

  def create
    @tag = Tag.create(params[:tag])
    respond_with @tag
  end
end
