class UsersController < ApplicationController
  before_action :require_logged_in, only: [:destroy, :index, :edit, :update]

  def new
    @user = User.new
    render :new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      log_in(@user)
      redirect_to user_url(@user)
    else
      flash.now[:errors] = @user.errors.full_messages
      render :new
    end
  end

  def show
    @user = User.find_by(id: params[:id])
    render :show
  end

  def index
    @users = User.all
    render :index
  end

  def edit
    @user = User.find_by(id: params[:id])
    render :edit
  end

  def update
    @user = User.find_by(id: params[:id])

    if @user
      @user.update_attributes(user_params)
      render :show
    else
      flash.now[:errors] = @user.errors.full_messages
      render :edit
    end
  end

  def destroy
    @user = User.find_by(id: params[:id])
    if @user
      @user.delete
      render :new
    else
      flash.now[:errors] = @user.errors.full_messages
      render :show
    end
  end

  def user_params
    params.require(:user).permit(:username, :password)
  end
end
