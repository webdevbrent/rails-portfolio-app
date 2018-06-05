class Skill < ApplicationRecord
  include Placeholder
  validates_presence_of :title, :percent_utilized

  after_initialize :set_defaults

  def set_defaults
    # If badge is present then the code will be skipped.
    # If not, then each will replace the value with the below defaults.

    self.badge ||= Placeholder.image_generator(height: "75", width: "75")

    # Same as:
    # if self.main_image == nil
    #   self.main_image = 'https://placeimg.com/600/400/any'
    # end

  end
end
