class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by_login(user_params[:login])
    if @user && @user.authenticate(user_params[:password])
      redirect_to root_url
    else
      render 'new'
    end
  end

  private
    def user_params
      params.require(:session).permit(:login, :password)
    end
end
