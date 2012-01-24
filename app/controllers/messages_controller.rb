class MessagesController < ApplicationController

  def filter
    manager_name = Manager.find(session[:manager_id]).email
    Message.where(:receiver => manager_name)
  end

  # GET /messages
  # GET /messages.json
  def index
    @messages = filter().order(:sentdate)

    respond_to do |format|
      format.html # index.html.erb
    end
  end

  # GET /messages/1
  # GET /messages/1.json
  def show
    manager_name = Manager.find(session[:manager_id]).email
    @message = filter().find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @message }
    end
  end

  # GET /messages/new
  # GET /messages/new.json
  def new
    manager_name = Manager.find(session[:manager_id]).email
    @message = Message.new
    @message[:sender] = manager_name
    @message[:sentdate] = Date.today

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @message }
    end
  end

  # POST /messages
  # POST /messages.json
  def create
    manager_name = Manager.find(session[:manager_id]).email
    @message = Message.new(params[:message])
    @message[:sender] = manager_name
    @message[:sentdate] = Date.today
    
    respond_to do |format|
      if @message.save
        format.html { redirect_to @message, notice: 'message was successfully created.' }
        format.json { render json: @message, status: :created, location: @message }
      else
        format.html { render action: "new" }
        format.json { render json: @message.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /messages/1
  # PUT /messages/1.json
  def update
    @message = Message.find(params[:id])

    respond_to do |format|
      if @message.update_attributes(params[:message])
        format.html { redirect_to @message, notice: 'message was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @message.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /messages/1
  # DELETE /messages/1.json
  def destroy
    @message = Message.find(params[:id])
    @message.destroy

    respond_to do |format|
      format.html { redirect_to messages_url }
      format.json { head :ok }
    end
  end
end
