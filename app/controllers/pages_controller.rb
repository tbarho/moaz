class PagesController < ApplicationController
  def home
    @title = "Home"
    render :layout => false
  end

  def about
    @title = "About"
  end
end
