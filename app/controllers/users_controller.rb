class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path, notice: 'User was successfully created.'
    else
      render 'new', notice: 'User was successfully created.'
    end
  end

  def show
    @user = User.includes(:stories).find(helpers.current_user.id)
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password)
  end
end
