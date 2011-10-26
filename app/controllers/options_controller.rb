class OptionsController < ApplicationController
  before_filter :authenticate_with_admin
  def new
    @option = Option.new(:property_id => params[:property_id])    
  end

  def create
    @option = Option.new(params[:option])
    if @option.save
      flash[:notice] = "Successfully created option."
      redirect_to @option.property
    else
      render :action => 'new'
    end
  end

  def destroy
    @option = Option.find(params[:id])
    @property = @option.property
    @option.destroy
    flash[:notice] = "Successfully destroyed option."
    redirect_to @property
  end

end
