class PagesController < ApplicationController
  def index
    @links = Link.paginate(:page => params[:page], :per_page => params[:per_page])
  end
end
