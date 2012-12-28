class LinksController < ApplicationController
  def show
    @link = Link.find(params[:id])
    @comment = Comment.new
  end

  def new
    @link = Link.new
  end

  def create
    @link = current_user.links.create(params[:link])

    respond_to do |format|
      if @link.save
        format.html { redirect_to link_path(@link) }
        format.json { render :json => @link}
      else
        formatl.html { render :action => 'new' }
        format.json { render :json => @link.errors, :status =>
          :unprocessable_entity }
      end
    end
  end
end
