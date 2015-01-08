class Vagrant::Boxes::ProvidersController < ApplicationController
  before_action :set_vagrant_box_provider, only: [:show, :edit, :update, :destroy]

  # GET /vagrant/boxes/providers
  # GET /vagrant/boxes/providers.json
  def index
    @vagrant_box_providers = Vagrant::Box::Provider.all
  end

  # GET /vagrant/boxes/providers/1
  # GET /vagrant/boxes/providers/1.json
  def show
  end

  # GET /vagrant/boxes/providers/new
  def new
    @vagrant_box_provider = Vagrant::Box::Provider.new
  end

  # GET /vagrant/boxes/providers/1/edit
  def edit
  end

  # POST /vagrant/boxes/providers
  # POST /vagrant/boxes/providers.json
  def create
    @vagrant_box_provider = Vagrant::Box::Provider.new(vagrant_box_provider_params)

    respond_to do |format|
      if @vagrant_box_provider.save
        format.html { redirect_to @vagrant_box_provider, notice: 'Provider was successfully created.' }
        format.json { render :show, status: :created, location: @vagrant_box_provider }
      else
        format.html { render :new }
        format.json { render json: @vagrant_box_provider.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vagrant/boxes/providers/1
  # PATCH/PUT /vagrant/boxes/providers/1.json
  def update
    respond_to do |format|
      if @vagrant_box_provider.update(vagrant_box_provider_params)
        format.html { redirect_to @vagrant_box_provider, notice: 'Provider was successfully updated.' }
        format.json { render :show, status: :ok, location: @vagrant_box_provider }
      else
        format.html { render :edit }
        format.json { render json: @vagrant_box_provider.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vagrant/boxes/providers/1
  # DELETE /vagrant/boxes/providers/1.json
  def destroy
    @vagrant_box_provider.destroy
    respond_to do |format|
      format.html { redirect_to vagrant_box_providers_url, notice: 'Provider was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vagrant_box_provider
      @vagrant_box_provider = Vagrant::Box::Provider.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vagrant_box_provider_params
      params.require(:vagrant_box_provider).permit(:name, :url)
    end
end
