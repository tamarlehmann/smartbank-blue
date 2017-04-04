class CategoriesController < ApplicationController

  def index
  end

  def edit
    @category = Category.find(params[:id])
  end

  def update
    p params
    cat = Category.find(params[:id])
    cat.target = params[:target]
    cat.save
    # Category.select(:target).update(params[:target].where(id: params[:id]))
  end

  def task_params
    params.require(:category).permit(:name, :created_at, :updated_at, :transaction_id, :target)
  end

  def show
    @heading = Category.find(params[:id]).name
    @heading_cap = @heading.capitalize
    @target = Category.find(params[:id])
    @results = Transaction.joins(:category).where("categories.name = '#{@heading}'")
  end

end
