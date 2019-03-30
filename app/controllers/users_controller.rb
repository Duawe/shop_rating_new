class UsersController < ApplicationController

  before_action :find_user, only: [:show, :edit, :update, :destroy]

  def show

  end

  private

  def find_user
    @user = user.find(params[:id])
  end

  def upload_picture
    @user.picture.attach(uploaded_file) if uploaded_file.present?
  end

  def uploaded_file
    params[:user][:picture]
  end

end
