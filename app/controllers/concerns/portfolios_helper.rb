module PortfoliosHelper
  def image_generator(width: 0, height: 0)
    "http://via.placeholder.com/#{width}x#{height}"
  end

  def portfolio_img(img)
    if img.present?
      img.url
    elsif img.mounted_as == :thumb_image
      image_generator(height: 200, width: 350)
    else
      image_generator(height: 600, width: 400)
    end
  end
end