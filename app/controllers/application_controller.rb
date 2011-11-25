class ApplicationController < ActionController::Base
  before_filter :authorize
  
  protected

    def authorize
      unless Manager.find_by_id(session[:manager_id])
        redirect_to login_url, notice: "Please log in"
      end
    end
  #protect_from_forgery
end
