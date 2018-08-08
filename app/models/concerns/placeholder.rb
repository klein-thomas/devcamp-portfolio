# Comment...
module Placeholder extend ActiveSupport::Concern

  def generate_image(width, height)
    "http://via.placeholder.com/#{width}x#{height}"
  end
end