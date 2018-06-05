module DefaultPageContent
    extend ActiveSupport::Concern

    included do
        before_action :set_page_defaults
    end

    def set_page_defaults
        @page_title = "Brent Phillips"
        @seo_keywords = "Brent Phillips Portfolio"
    end

end