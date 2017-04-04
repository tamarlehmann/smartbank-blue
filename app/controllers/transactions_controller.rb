class TransactionsController < ApplicationController

  def index
    @categories = Category.all
  end

end
