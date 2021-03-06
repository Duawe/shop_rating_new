class Admin::CategoriesController < AdminController

  before_action :find_category, only: [:show, :edit, :update, :destroy]

  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def show

  end

  def create
    @category = Category.new(category_params)
    
    if @category.save
      redirect_to admin_shops_path
    else
      render 'new'
    end
  end

  def edit

  end

  def update
    if @category.update(category_params)
      redirect_to admin_shops_path
    else
      render 'edit'
    end
  end

  def destroy
    @category.destroy
    redirect_to admin_shops_path 
  end

  private

  def find_category
    @category = category.find(params[:id])
  end

  def category_params
    params.require(:category).permit(:name, :shop_id)
  end

end
