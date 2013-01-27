class RushApplicationsController < ApplicationController
  # GET /rush_applications
  # GET /rush_applications.json
  def index
    @rush_applications = RushApplication.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @rush_applications }
    end
  end

  # GET /rush_applications/1
  # GET /rush_applications/1.json
  def show
    @rush_application = RushApplication.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @rush_application }
    end
  end

  # GET /rush_applications/new
  # GET /rush_applications/new.json
  def new
    @rush_application = RushApplication.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @rush_application }
    end
  end

  # GET /rush_applications/1/edit
  def edit
    @rush_application = RushApplication.find(params[:id])
  end

  # POST /rush_applications
  # POST /rush_applications.json
  def create
    @rush_application = RushApplication.new(params[:rush_application])

    respond_to do |format|
      if @rush_application.save
        format.html { redirect_to @rush_application, notice: 'Rush application was successfully created.' }
        format.json { render json: @rush_application, status: :created, location: @rush_application }
      else
        format.html { render action: "new" }
        format.json { render json: @rush_application.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /rush_applications/1
  # PUT /rush_applications/1.json
  def update
    @rush_application = RushApplication.find(params[:id])

    respond_to do |format|
      if @rush_application.update_attributes(params[:rush_application])
        format.html { redirect_to @rush_application, notice: 'Rush application was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @rush_application.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rush_applications/1
  # DELETE /rush_applications/1.json
  def destroy
    @rush_application = RushApplication.find(params[:id])
    @rush_application.destroy

    respond_to do |format|
      format.html { redirect_to rush_applications_url }
      format.json { head :no_content }
    end
  end
end
