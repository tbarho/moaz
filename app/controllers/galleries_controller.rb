class GalleriesController < ApplicationController
  before_filter :authenticate_with_admin, :except => [:index, :show]
  def index
    @galleries = Gallery.all
  end

  def show
    @gallery = Gallery.find_by_slug(params[:id])
  end

  def new
    @gallery = Gallery.new
  end

  def create
    @gallery = Gallery.new(params[:gallery])
    if @gallery.save
      flash[:notice] = "Successfully created gallery."
      redirect_to @gallery
    else
      render :action => "new"
    end
  end

  def edit
    @gallery = Gallery.find_by_slug(params[:id])
  end

  def update
    @gallery = Gallery.find_by_slug(params[:id])
    if @gallery.update_attributes(params[:gallery])
      flash[:notice] = "Successfully updated gallery."
      redirect_to galleries_path
    else
      render :action => "edit"
    end
  end

  def destroy
    @gallery = Gallery.find_by_slug(params[:id])
    @gallery.destroy
    flash[:notice] = "Successfully destroyed gallery."
    redirect_to galleries_path
  end

end
