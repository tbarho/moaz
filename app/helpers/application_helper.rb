module ApplicationHelper

  def logo
    image_tag("logo.gif", :alt => "Moazami Homes")
  end

  # Return a title on a per-page basis
  def title
    base_title = "My New App"
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end 

end
