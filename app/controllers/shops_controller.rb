class ShopsController < ApplicationController

  before_action :find_shop, only: [:show]

  def index
    @shops = Shop.all
  end
  
  def new
    @shop = Shop.new
  end

  def create
    #проверка на регистрацию
    
    @shop = Shop.new(shop_params)
    
    if @shop.save
      upload_picture
      main_file
      redirect_to shops_path
    else
      render 'new'
    end
  end

  def show
    
  end
  
  private

  def find_shop
    @shop = Shop.find(params[:id])
  end

  def shop_params
    params.require(:shop).permit(:name, :description, :user_id, :category_id)
  end

  def upload_picture
    @shop.picture.attach(uploaded_file) if uploaded_file.present?
  end

  def uploaded_file
    params[:shop][:picture][:main]
  end

  def main_file
    params[:shop][:main]
  end

end
