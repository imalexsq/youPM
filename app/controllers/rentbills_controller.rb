class RentbillsController < ApplicationController
  def create
    @rentbill = Rentbill.new(params[:rentbill])

    respond_to do |format|
      if @rentbill.save
         format.html { redirect_to '/',
           notice: 'Rent Bill #{@rentbill.bill_date} was created.' }
      else
         format.html { render action: "new" }
      end
    end
  end

  def update
    @rentbill = Rentbill.find(params[:id])

    respond_to do |format|
      if @rentbill.update_attributes(params[:rentbill])
        format.html { redirect_to :action => 'index', notice: 'Rent bill was updated.' }
      else
        format.html { render action: "edit" }
      end
    end
  end

  def edit
    @rentbill = Rentbill.find(params[:id])
  end

  def index
    @rentbills = Rentbill.all()
    # Need to select all tenants names (mapping tenant ids to names) for this manager 
    respond_to do |format|
      format.html # index.html.haml
    end
  end
 
  def show
    @rentbill = Rentbill.find(params[:id])
    respond_to do |format|
      format.html # show.html.haml
    end
  end
 
  def new
    @rentbill = Rentbill.new
    
    respond_to do |format|
      format.html # new.html.haml
    end
  end

  def destroy
    @rentbill = Rentbill.find(params[:id])
    begin
      @rentbill.destroy
      flash[:notice] = "#{@rentbill.bill_date} deleted"
    rescue Exception => e
      flash[:notice] = e.message
    end
  end
end
