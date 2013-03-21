class RenterSettingsController < ApplicationController
  # GET /renter_settings
  # GET /renter_settings.json
  def index

    respond_to do |format|
      format.html {render :layout => false } # index.html.erb
      format.json { render json: @renter_settings }
    end
  end

  # GET /renter_settings/1
  # GET /renter_settings/1.json
  def show
    @renter_setting = RenterSetting.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @renter_setting }
    end
  end

  # GET /renter_settings/new
  # GET /renter_settings/new.json
  def new
    @renter_setting = RenterSetting.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @renter_setting }
    end
  end

  # GET /renter_settings/1/edit
  def edit
    @renter_setting = RenterSetting.find(params[:id])
  end

  # POST /renter_settings
  # POST /renter_settings.json
  def create
    @renter_setting = RenterSetting.new(params[:renter_setting])

    respond_to do |format|
      if @renter_setting.save
        format.html { redirect_to @renter_setting, notice: 'Renter setting was successfully created.' }
        format.json { render json: @renter_setting, status: :created, location: @renter_setting }
      else
        format.html { render action: "new" }
        format.json { render json: @renter_setting.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /renter_settings/1
  # PUT /renter_settings/1.json
  def update
    @renter_setting = RenterSetting.find(params[:id])

    respond_to do |format|
      if @renter_setting.update_attributes(params[:renter_setting])
        format.html { redirect_to @renter_setting, notice: 'Renter setting was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @renter_setting.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /renter_settings/1
  # DELETE /renter_settings/1.json
  def destroy
    @renter_setting = RenterSetting.find(params[:id])
    @renter_setting.destroy

    respond_to do |format|
      format.html { redirect_to renter_settings_url }
      format.json { head :no_content }
    end
  end
end
