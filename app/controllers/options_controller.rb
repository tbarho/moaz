class OptionsController < ApplicationController
  before_filter :authenticate_with_admin
  def new
    @property = Property.find_by_slug(params[:property_id])
    @option = @property.options.new   
  end

  def create
    @property = Property.find_by_slug(params[:property_id])
    @option = @property.options.create(params[:option])
    if @option.save
      flash[:notice] = "Successfully created option."
      redirect_to @option.property
    else
      render :action => 'new'
    end
  end

  def destroy
    @property = Property.find_by_slug(params[:property_id])
    @option = Option.find(params[:id])
    @option.destroy
    flash[:notice] = "Successfully destroyed option."
    redirect_to @property
  end

end
