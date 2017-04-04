class CategoriesController < ApplicationController

  def index
    @heading = 'Food'
    @results = Transaction.joins(:category).where("categories.name = 'food'")
  end

  def edit

  end

  def show
    
  end

end
