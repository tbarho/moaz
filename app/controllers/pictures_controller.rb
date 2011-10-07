class PicturesController < ApplicationController
  before_filter :authenticate_with_admin

  def new
    @picture = Picture.new(:property_id => params[:property_id])
  end

  def create
    @picture = Picture.new(params[:picture])
    if @picture.save
      flash[:notice] = "Successfully created picture."
      redirect_to @picture.property
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
    redirect_to @picture.property
  end
end
