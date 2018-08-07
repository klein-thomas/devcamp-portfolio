class Portfolio < ApplicationRecord
  validates_presence_of :title, :body, :main_image, :thumb_image
  
  scope :ruby_on_rails_portfol_items, -> { where(subtitle: "Ruby on Rails") }
end
