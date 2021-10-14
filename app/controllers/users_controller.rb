class UsersController < ApplicationController
  def index
  end

  def show
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    current_user.update(user_params)
    redirect_to current_user
  end

  private
  def user_params
    params.require(:user).permit(:username, :full_name,
                                :about, :email, :phone_number)
  end
end
