class PagesController < ApplicationController
  def home
    @title = "Home"
    render :layout => false
  end

  def profile
    @title = "Company Profile"
  end

  def amir_bio
    @title = "About Amir Moazami"
  end

  def contact
    @title = "Contact Us"
  end
end
