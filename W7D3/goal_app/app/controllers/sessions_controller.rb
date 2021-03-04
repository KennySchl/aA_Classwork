class SessionsController < ApplicationController

  def new 

  end

  def create 
    @user = User.find_by_credential(params[:user][:username], params[:user][:password])
    if @user 
      login!(@user)
      redirect_to user_url(@user)
    else 
      flash.now[:errors] = ["Invalid username or password"]
      render :new 
    end
  end

  def destroy

  end

  


end
