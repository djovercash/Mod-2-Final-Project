class CategoriesController < ApplicationController

  ### Show all categories/and ul under them with the tasts under that are unclaimed
  def index
    @categories_1_4 = Category.all[0..3]
    @categories_5_8 = Category.all[4..7]
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
  end

end
