class SessionsController < ApplicationController
  skip_before_action :ensure_login, only: [:new, :create]
  

  def new
  end

  def create
    user = User.find_by(login: params[:user][:login])
    password = params[:user][:password]

    if user && user.authenticate(password)
      session[:user_id] = user.id
      redirect_to user, notice: "Logged in successfully"
    else
      redirect_to login_path, alert: "Invalid lof or pass"
    end
  end

  def destroy
    reset_session
    redirect_to login_path, notice: "You have been logged out"
  end
end
