class SessionsController < ApplicationController
  skip_before_filter :authorize

  def new
  end

  def create
    manager = Manager.find_by_email(params[:email])
    if manager and manager.authenticate(params[:password])
       session[:manager_id] = manager.id
       redirect_to admin_url
    else
       redirect_to login_url, alert: "Invalid email/password combination"
    end
  end

  def destroy
    session[:manager_id] = nil
    redirect_to '/', notice: "Logged out"
  end

end
