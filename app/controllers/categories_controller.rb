class CategoriesController < ApplicationController

  def index
  end

  def edit

  end

  def show
    @heading = Category.find(params[:id]).name
    @heading_cap = @heading.capitalize

    @results = Transaction.joins(:category).where("categories.name = '#{@heading}'")
  end

end
