class PagesController < ApplicationController
  def home
    @posts = Post.all
    @skills = Skill.all
    @portfolios = Portfolio.all
  end

  def about
  end

  def contact
  end
end