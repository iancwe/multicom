module ApplicationHelper
  # def background_image_url
  #   Company.current.img_url
  # end

  def background_image_url
    # if company.current.img_url is not defined then run this
    if defined?(Company.current.img_url) == nil
      puts "Cant find company url"
    elsif Company.current.img_url != $CompanyUrl
      puts 'Running normal pathing'
      Company.current.img_url
    end
  end
end
