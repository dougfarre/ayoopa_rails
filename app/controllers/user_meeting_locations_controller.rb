class UserMeetingLocationsController < ApplicationController
  # GET /user_meeting_locations
  # GET /user_meeting_locations.json
  def index
    @user_meeting_locations = UserMeetingLocation.all

    respond_to do |format|
      format.html { render :layout => 'preferences' } # index.html.erb
      format.json { render json: @user_meeting_locations }
    end
  end

  # GET /user_meeting_locations/1
  # GET /user_meeting_locations/1.json
  def show
    @user_meeting_location = UserMeetingLocation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user_meeting_location }
    end
  end

  # GET /user_meeting_locations/new
  # GET /user_meeting_locations/new.json
  def new
    @user_meeting_location = UserMeetingLocation.new
    @user_meeting_location.meeting_times.build

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user_meeting_location }
    end
  end

  # GET /user_meeting_locations/1/edit
  def edit
    @user_meeting_location = UserMeetingLocation.find(params[:id])
    @edit = true
  end

  # POST /user_meeting_locations
  # POST /user_meeting_locations.json
  def create
    @user_meeting_location = UserMeetingLocation.new(params[:user_meeting_location])
    @user_meeting_location.user_id = current_user.id
    
    respond_to do |format|
      if @user_meeting_location.save
        format.html { redirect_to user_meeting_locations_path, notice: 'User meeting location was successfully created.' }
        format.json { render json: @user_meeting_location, status: :created, location: @user_meeting_location }
      else
        format.html { render action: "new" }
        format.json { render json: @user_meeting_location.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /user_meeting_locations/1
  # PUT /user_meeting_locations/1.json
  def update
    @user_meeting_location = UserMeetingLocation.find(params[:id])

    respond_to do |format|
      if @user_meeting_location.update_attributes(params[:user_meeting_location])
        format.html { redirect_to user_meeting_locations_path, notice: 'User meeting location was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user_meeting_location.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_meeting_locations/1
  # DELETE /user_meeting_locations/1.json
  def destroy
    @user_meeting_location = UserMeetingLocation.find(params[:id])
    @user_meeting_location.destroy

    respond_to do |format|
      format.html { redirect_to user_meeting_locations_url }
      format.json { head :no_content }
    end
  end
end
