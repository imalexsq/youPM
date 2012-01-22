class IndexController < ApplicationController
  skip_before_filter :authorize
  def index
	@activities = Activity.where(:manager_id => session[:manager_id])	
  end

end
