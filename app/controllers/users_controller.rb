class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
    @user.build_profile
  end

  def create
    @user = User.new(user_params)
    #@user.build_profile(user_image: user_params[:user_image])
    if @user.save
      log_in @user
      flash[:success] = "Welcome to the Sample App!"
      redirect_to :root, notice: "finished signing up!!" #登録完了後に登録しました！的なアクションが欲しい
    else
      render 'new'
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, profile_attributes: [:user_image])
  end
end
