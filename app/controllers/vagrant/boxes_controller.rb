class Vagrant::BoxesController < ApplicationController
  before_action :set_vagrant_box, only: [:show, :edit, :update, :destroy]

  # GET /vagrant/boxes
  # GET /vagrant/boxes.json
  def index
    @vagrant_boxes = Vagrant::Box.all
  end

  # GET /vagrant/boxes/1
  # GET /vagrant/boxes/1.json
  def show
  end

  # GET /vagrant/boxes/new
  def new
    @vagrant_box = Vagrant::Box.new
  end

  # GET /vagrant/boxes/1/edit
  def edit
  end

  # POST /vagrant/boxes
  # POST /vagrant/boxes.json
  def create
    @vagrant_box = Vagrant::Box.new(vagrant_box_params)

    respond_to do |format|
      if @vagrant_box.save
        format.html { redirect_to @vagrant_box, notice: 'Box was successfully created.' }
        format.json { render :show, status: :created, location: @vagrant_box }
      else
        format.html { render :new }
        format.json { render json: @vagrant_box.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vagrant/boxes/1
  # PATCH/PUT /vagrant/boxes/1.json
  def update
    respond_to do |format|
      if @vagrant_box.update(vagrant_box_params)
        format.html { redirect_to @vagrant_box, notice: 'Box was successfully updated.' }
        format.json { render :show, status: :ok, location: @vagrant_box }
      else
        format.html { render :edit }
        format.json { render json: @vagrant_box.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vagrant/boxes/1
  # DELETE /vagrant/boxes/1.json
  def destroy
    @vagrant_box.destroy
    respond_to do |format|
      format.html { redirect_to vagrant_boxes_url, notice: 'Box was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vagrant_box
      @vagrant_box = Vagrant::Box.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vagrant_box_params
      params.require(:vagrant_box).permit(:name, :description, :short_description, :versions_id)
    end
end
