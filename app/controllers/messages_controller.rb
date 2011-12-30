class MessagesController < ApplicationController
  #skip_before_filter :authorize
  # GET /messages
  def index
    manager_name = Manager.find(session[:manager_id]).email
    @messages = Message.where(:receiver => manager_name).order(:sentdate)

    respond_to do |format|
      format.html # index.html.erb
    end
  end

  def new
  end

end
