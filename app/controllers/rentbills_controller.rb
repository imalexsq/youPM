class RentbillsController < ApplicationController
  def create
    @bill = Rentbill.new

    respond_to do |format|
      if @bill.save
         format.html { redirect_to '/',
           notice: 'Rent Bill #{@bill.bill_date} was created.' }
      else
         format.html { render action: "new" }
      end
    end
  end

  def update
    @rentbill = Rentbill.find(params[:id])
    respond_to do |format|
      if @rentbill.update_attributes(params[:rentbill])
        format.html { redirect_to index, notice: 'Rent bill was updated.' }
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
    respond_to do |format|
      format.html # index.html.erb
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
end
