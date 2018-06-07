class Portfolio < ApplicationRecord
    has_many :technologies, dependent: :destroy
    accepts_nested_attributes_for :technologies, 
                                  reject_if: lambda { |attrs| attrs['name'].blank? }

    include Placeholder

    validates_presence_of :title, :body, :main_image, :thumb_image

    def self.angular
        where(subtitle: "Angular")
    end

    scope :ruby_on_rails_portfolio_items, -> { where(subtitle: 'Ruby on Rails') }

    after_initialize :set_defaults

    def set_defaults
    # If main_image or thumb_image are present then the code will be skipped.
    # If not, then each will replace the value with the below defaults.

       self.main_image  ||= Placeholder.image_generator(height: '600', width: '400')
       self.thumb_image ||= Placeholder.image_generator(height: '350', width: '200')

    # Same as:
    # if self.main_image == nil
    #   self.main_image = 'https://placeimg.com/600/400/any'
    # end

    end
end
