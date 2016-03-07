class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def index
    @users = User.all
  end

  def show
  end

  def new
    @user = User.new
  end

  def edit
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to users_url
    else
      render :new
    end
  end

  def update
    if @user.update(user_params)
      redirect_to
    else
      render :new
    end
  end

  def destroy
    @user.destroy
    edirect_to users_url
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :twitter_id, :message, :icon)
  end
end
