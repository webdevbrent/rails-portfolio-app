class Portfolio < ApplicationRecord
    validates_presence_of :title, :body, :main_image, :thumb_image

    def self.angular
        where(subtitle: "Angular")
    end

    scope :ruby_on_rails_portfolio_items, -> { where(subtitle: 'Ruby on Rails') }

    after_initialize :set_defaults

    def set_defaults
    # If main_image or thumb_image are present then the code will be skipped.
    # If not, then each will replace the value with the below defaults.

       self.main_image  ||= 'https://placeimg.com/600/400/any'
       self.thumb_image ||= 'https://placeimg.com/350/200/any'

    # Same as:
    # if self.main_image == nil
    #   self.main_image = 'https://placeimg.com/600/400/any'
    # end
    
    end
end
