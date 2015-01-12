class Vagrant::Boxes::Versions::ProvidersController < ApplicationController
  before_action :set_vagrant_box_version
  before_action :set_vagrant_box_version_provider, only: [:show, :edit, :update, :destroy]

  # GET /vagrant/boxes/providers
  # GET /vagrant/boxes/providers.json
  def index
    @vagrant_box_version_providers = Vagrant::Box::Version::Provider.all
  end

  # GET /vagrant/boxes/providers/1
  # GET /vagrant/boxes/providers/1.json
  def show
  end

  # GET /vagrant/boxes/providers/new
  def new
    @vagrant_box_version_provider = Vagrant::Box::Version::Provider.new
    # @vagrant_box_version_provider.box_id = params[:box_id]
    @vagrant_box_version_provider.version_id = params[:box_id]
  end

  # GET /vagrant/boxes/providers/1/edit
  def edit
  end

  # POST /vagrant/boxes/providers
  # POST /vagrant/boxes/providers.json
  def create
    @vagrant_box_version_provider = Vagrant::Box::Version::Provider.new(vagrant_box_version_provider_params)

    respond_to do |format|
      if @vagrant_box_version_provider.save
        format.html { redirect_to vagrant_box_version_provider_path(@vagrant_box, @vagrant_box_version, @vagrant_box_version_provider), notice: 'Provider was successfully created.' }
        format.json { render :show, status: :created, location: @vagrant_box_version_provider }
      else
        format.html { render :new }
        format.json { render json: @vagrant_box_version_provider.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vagrant/boxes/providers/1
  # PATCH/PUT /vagrant/boxes/providers/1.json
  def update
    respond_to do |format|
      if @vagrant_box_version_provider.update(vagrant_box_version_provider_params)
        format.html { redirect_to @vagrant_box_version_provider, notice: 'Provider was successfully updated.' }
        format.json { render :show, status: :ok, location: @vagrant_box_version_provider }
      else
        format.html { render :edit }
        format.json { render json: @vagrant_box_version_provider.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vagrant/boxes/providers/1
  # DELETE /vagrant/boxes/providers/1.json
  def destroy
    @vagrant_box_version_provider.destroy
    respond_to do |format|
      format.html { redirect_to vagrant_box_version_providers_url, notice: 'Provider was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_vagrant_box_version
      @vagrant_box_version = Vagrant::Box::Version.find(params[:version_id])
      @vagrant_box = @vagrant_box_version.box
    end
    # Use callbacks to share common setup or constraints between actions.
    def set_vagrant_box_version_provider
      @vagrant_box_version_provider = Vagrant::Box::Version::Provider.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vagrant_box_version_provider_params
      params.require(:vagrant_box_version_provider).permit(:name, :url, :version_id)
    end
end
