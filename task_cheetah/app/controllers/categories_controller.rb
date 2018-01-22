class CategoriesController < ApplicationController

  ### Show all categories/and ul under them with the tasts under that are unclaimed
  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
  end

end
