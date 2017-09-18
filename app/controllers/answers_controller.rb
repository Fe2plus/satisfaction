class AnswersController < ApplicationController
  def index
    @users = User.all
    @posts = Post.all
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, profile_attributes: [:user_image])
  end
end
