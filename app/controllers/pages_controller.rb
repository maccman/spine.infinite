class PagesController < ApplicationController
  respond_to :html, :json
  
  def index
    @pages = Page.where("id > ?", params[:index] || 0).limit(60)
    respond_with(@pages)
  end
end