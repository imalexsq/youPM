class PropertyUnitsController < ApplicationController
  # GET /property_units
  # GET /property_units.json
  def index
    @property_units = PropertyUnit.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @property_units }
    end
  end

  # GET /property_units/1
  # GET /property_units/1.json
  def show
    @property_unit = PropertyUnit.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @property_unit }
    end
  end

  # GET /property_units/new
  # GET /property_units/new.json
  def new
    @property_unit = PropertyUnit.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @property_unit }
    end
  end

  # GET /property_units/1/edit
  def edit
    @property_unit = PropertyUnit.find(params[:id])
  end

  # POST /property_units
  # POST /property_units.json
  def create
    @property_unit = PropertyUnit.new(params[:property_unit])

    respond_to do |format|
      if @property_unit.save
        format.html { redirect_to @property_unit, notice: 'Property unit was successfully created.' }
        format.json { render json: @property_unit, status: :created, location: @property_unit }
      else
        format.html { render action: "new" }
        format.json { render json: @property_unit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /property_units/1
  # PUT /property_units/1.json
  def update
    @property_unit = PropertyUnit.find(params[:id])

    respond_to do |format|
      if @property_unit.update_attributes(params[:property_unit])
        format.html { redirect_to @property_unit, notice: 'Property unit was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @property_unit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /property_units/1
  # DELETE /property_units/1.json
  def destroy
    @property_unit = PropertyUnit.find(params[:id])
    @property_unit.destroy

    respond_to do |format|
      format.html { redirect_to property_units_url }
      format.json { head :ok }
    end
  end
end
