module ApplicationHelper
  # def background_image_url
  #   Company.current.img_url
  # end

  def background_image_url
    if Company.current.img_url == ''
      puts "No tenant branding found"
      puts "****************************************"
    elsif true
    else
      puts Company.current.img_url
      puts "****************************************"
      Company.current.img_url
    end
  end
end
