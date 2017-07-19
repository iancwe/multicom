module ApplicationHelper
  def background_image_url
    Company.current.img_url
  end
end
