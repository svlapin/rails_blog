class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_login(user_params.login)
    # TODO
    render 'new'
  end

  private
    def user_params
      params.require(:session).permit(:login, :password)
    end
end
