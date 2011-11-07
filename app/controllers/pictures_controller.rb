class PicturesController < ApplicationController
  before_filter :authenticate_with_admin

  def new
    @imageable = find_imageable
    @picture = @imageable.pictures.new
  end

  def create
    @imageable = find_imageable
    @picture = @imageable.pictures.create(params[:picture])
    if @picture.save
      flash[:notice] = "Successfully created picture."
      redirect_to @imageable
    else
      render :action => 'new'
    end
  end

  def edit
    @picture = Picture.find(params[:id])
  end

  def update
    @picture = Picture.find(params[:id])
    if @picture.update_attributes(params[:picture])
      flash[:notice] = "Successfully updated picture."
      redirect_to @picture.property
    else
      render :action => 'edit'
    end
  end

  def destroy
    @picture = Picture.find(params[:id])
    @picture.destroy
    flash[:notice] = "Successfully destroyed picture."
    redirect_to @picture.imageable
  end

  def sort
    params[:picture].each_with_index do |id, index|
      Picture.update_all({position: index+1}, {id: id})
    end
    render nothing: true
  end

  private

  def find_imageable
    params.each do |name, value|
      if name =~ /(.+)_id$/
        return $1.classify.constantize.find_by_slug(value)
      end
    end
  end

end
