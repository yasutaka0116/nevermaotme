class UsersController < ApplicationController

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = current_user
    @user.update(user_params)
    redirect_to :root and return
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :avatar, :profile, :homepage)
  end

end
