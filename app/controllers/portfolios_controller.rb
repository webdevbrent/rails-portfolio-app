class PortfoliosController < ApplicationController
    before_action :set_post, only: [:show, :edit, :update, :destroy]

    def index
        @portfolio_items = Portfolio.all.order("created_at ASC")
    end

    def new
        @portfolio_item = Portfolio.new
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

        redirect_to portfolios_path
    end

    private

    def set_post
        @portfolio_item = Portfolio.find(params[:id])
    end

    def post_params
        params.require(:portfolio).permit(:title, :subtitle, :body, :main_image, :thumb_image)
    end
end
