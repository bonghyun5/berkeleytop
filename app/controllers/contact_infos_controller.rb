class ContactInfosController < ApplicationController
  skip_before_filter :authorize, only: [:create, :new]

  before_filter :super_admin_authorize, only: [:index, :show]
  
  # GET /contact_infos
  # GET /contact_infos.json
  def index
    @contact_infos = ContactInfo.all
    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @contact_infos }
    end
  end

  # GET /contact_infos/1
  # GET /contact_infos/1.json
  def show
    @contact_info = ContactInfo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @contact_info }
    end
  end
  
  def edit
    @contact_info = ContactInfo.find(params[:id])
  end

  def update
    @contact_info = ContactInfo.find(params[:id])
    
    respond_to do |format|
      if @contact_info.update_attributes(params[:contact_info])
        format.html { redirect_to member_contact_messages_url, notice: 'User was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # POST /contact_infos
  # POST /contact_infos.json
  def create
    @contact_info = ContactInfo.new(params[:contact_info])

    respond_to do |format|
      if @contact_info.save
        format.html { redirect_to contact_path, notice: "Thank you. We\'ll get back to you as soon as we can." }
        format.json { render json: @contact_info, status: :created, location: @contact_info }
      else
        format.html { render template: "home/contact"}
        format.json { render json: @contact_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contact_infos/1
  # DELETE /contact_infos/1.json
  def destroy
    @contact_info = ContactInfo.find(params[:id])
    @contact_info.destroy

    respond_to do |format|
      format.html { redirect_to contact_infos_url }
      format.json { head :no_content }
    end
  end
end
