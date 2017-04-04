class CategoriesController < ApplicationController

  def index
    @category = Category.where(:id => 1)
  end

end
