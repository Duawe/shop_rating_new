class CategoriesController < ApplicationController
   
  before_action :find_category, only: [:show]

  def index
    @categories = Category.all
  end

  def show

  end

  private

  def find_category
    @category = category.find(params[:id])
  end

  def category_params
    params.require(:category).permit(:name, :shop_id)
  end

end
