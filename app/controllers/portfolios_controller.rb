class PortfoliosController < ApplicationController
    before_action :set_post, only: [:show, :edit, :update, :destroy]
    layout "portfolio"

    def index
        @portfolio_items = Portfolio.all
    end

    def new
        @portfolio_item = Portfolio.new
        3.times { @portfolio_item.technologies.build }
    end

    def create
        @portfolio_item = Portfolio.new(post_params)
        @portfolio_item.save

        redirect_to portfolios_path
    end

    def show
    end

    def edit
    end

    def update
        @portfolio_item.update(post_params)

        redirect_to portfolios_path
    end

    def destroy
        @portfolio_item.destroy

        redirect_to portfolios_url
    end

    private

    def set_post
        @portfolio_item = Portfolio.find(params[:id])
    end

    def post_params
        params.require(:portfolio).permit(:title, :subtitle, :body, :main_image, :thumb_image, technologies_attributes: [:name])
    end
end
