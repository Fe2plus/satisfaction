class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      params[:session][:remember_me] == '1' ? remember(user) : forget(user)
      remember user
      redirect_to user
    else
      render "new"
      flash[:danger] = 'Invalid email/password combination' # 本当は正しくない
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end
end
