class PropertyAssetsController < ApplicationController
  # GET /property_assets
  # GET /property_assets.json
  def index
    @property_assets = PropertyAsset.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @property_assets }
    end
  end

  # GET /property_assets/1
  # GET /property_assets/1.json
  def show
    @property_asset = PropertyAsset.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @property_asset }
    end
  end

  # GET /property_assets/new
  # GET /property_assets/new.json
  def new
    @property_asset = PropertyAsset.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @property_asset }
    end
  end

  # GET /property_assets/1/edit
  def edit
    @property_asset = PropertyAsset.find(params[:id])
  end

  # POST /property_assets
  # POST /property_assets.json
  def create
    @property_asset = PropertyAsset.new(params[:property_asset])

    respond_to do |format|
      if @property_asset.save
        format.html { redirect_to @property_asset, notice: 'Property asset was successfully created.' }
        format.json { render json: @property_asset, status: :created, location: @property_asset }
      else
        format.html { render action: "new" }
        format.json { render json: @property_asset.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /property_assets/1
  # PUT /property_assets/1.json
  def update
    @property_asset = PropertyAsset.find(params[:id])

    respond_to do |format|
      if @property_asset.update_attributes(params[:property_asset])
        format.html { redirect_to @property_asset, notice: 'Property asset was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @property_asset.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /property_assets/1
  # DELETE /property_assets/1.json
  def destroy
    @property_asset = PropertyAsset.find(params[:id])
    @property_asset.destroy

    respond_to do |format|
      format.html { redirect_to property_assets_url }
      format.json { head :ok }
    end
  end
end
