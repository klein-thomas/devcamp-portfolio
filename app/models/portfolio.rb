class Portfolio < ApplicationRecord
  include Placeholder

  validates_presence_of :title, :body, :main_image, :thumb_image

  scope :ruby_on_rails_portfol_items, -> { where(subtitle: "Ruby on Rails") }

  after_initialize :set_defaults

  def set_defaults
    self.main_image ||= generate_image(350, 200)
    self.thumb_image ||= generate_image(60, 60)
  end
end
