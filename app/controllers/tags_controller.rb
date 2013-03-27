class TagsController < ApplicationController

  respond_to :html, :json, :xml

  def create
    @tag = Tag.create_or_find(params[:tag]["title"])
    respond_with @tag
  end
end
