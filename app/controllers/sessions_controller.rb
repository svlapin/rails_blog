class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by_login(user_params[:login])
    if @user && @user.authenticate(user_params[:password])
      session[:user_id] = @user.id
      redirect_to root_url
    else
      render 'new'
    end
  end

  def delete
    session[:user_id] = nil
    redirect_to root_url
  end

  private
    def user_params
      params.require(:session).permit(:login, :password)
    end
end
