class Admin::UsersController < AdminController

  before_action :find_user, only: [:show, :edit, :update, :destroy]

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def show

  end

  def create
    @user = User.new(user_params)
    # upload_picture
    if @user.save
      redirect_to user_path
    else
      render 'new'
    end
  end

  def edit

  end

  def update
    if @user.update(user_params)
      # upload_picture
      redirect_to user_path
    else
      render 'edit'
    end
  end

  def destroy
    @user.destroy
    redirect_to user_path 
  end

  private

  def find_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:nickname, :email, :password, :shop_id)
  end

   def upload_picture
    @user.picture.attach(uploaded_file) if uploaded_file.present?
  end

  def uploaded_file
    params[:user][:picture]
  end

end
