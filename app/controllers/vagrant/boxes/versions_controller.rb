class Vagrant::Boxes::VersionsController < ApplicationController
  before_action :set_vagrant_box_version, only: [:show, :edit, :update, :destroy]

  # GET /vagrant/boxes/versions
  # GET /vagrant/boxes/versions.json
  def index
    @vagrant_box_versions = Vagrant::Box::Version.all
  end

  # GET /vagrant/boxes/versions/1
  # GET /vagrant/boxes/versions/1.json
  def show
  end

  # GET /vagrant/boxes/versions/new
  def new
    @vagrant_box_version = Vagrant::Box::Version.new
  end

  # GET /vagrant/boxes/versions/1/edit
  def edit
  end

  # POST /vagrant/boxes/versions
  # POST /vagrant/boxes/versions.json
  def create
    @vagrant_box_version = Vagrant::Box::Version.new(vagrant_box_version_params)

    respond_to do |format|
      if @vagrant_box_version.save
        format.html { redirect_to @vagrant_box_version, notice: 'Version was successfully created.' }
        format.json { render :show, status: :created, location: @vagrant_box_version }
      else
        format.html { render :new }
        format.json { render json: @vagrant_box_version.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vagrant/boxes/versions/1
  # PATCH/PUT /vagrant/boxes/versions/1.json
  def update
    respond_to do |format|
      if @vagrant_box_version.update(vagrant_box_version_params)
        format.html { redirect_to @vagrant_box_version, notice: 'Version was successfully updated.' }
        format.json { render :show, status: :ok, location: @vagrant_box_version }
      else
        format.html { render :edit }
        format.json { render json: @vagrant_box_version.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vagrant/boxes/versions/1
  # DELETE /vagrant/boxes/versions/1.json
  def destroy
    @vagrant_box_version.destroy
    respond_to do |format|
      format.html { redirect_to vagrant_box_versions_url, notice: 'Version was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vagrant_box_version
      @vagrant_box_version = Vagrant::Box::Version.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vagrant_box_version_params
      params.require(:vagrant_box_version).permit(:version, :status, :description_html, :description_markdown, :providers_id)
    end
end
