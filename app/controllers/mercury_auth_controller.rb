class MercuryAuthController < MercuryController
  include SessionsHelper

  before_filter :authenticate_with_admin, :only => [:edit]
  def edit
    if request.path.include?("post")
    render :text => '', :layout => 'mercury'
    else
      redirect_to request.path.gsub(/\/editor/, '')
    end
  end
end
