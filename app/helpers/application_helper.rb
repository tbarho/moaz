module ApplicationHelper

  def first_thumb_link(collection)
    image_tag(collection.first.image_url(:thumb), :class => "img-indent") unless collection.empty?
  end

  def logo
    image_tag("https://moazami.s3.amazonaws.com/assets/web-logo.jpg", :alt => "Moazami Homes")
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
