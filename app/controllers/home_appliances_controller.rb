class HomeAppliancesController < ApplicationController
  before_action :set_home_appliance, only: %i[ show edit update destroy ]

  # GET /home_appliances or /home_appliances.json
  def index
    @home_appliances = HomeAppliance.all
  end

  # GET /home_appliances/1 or /home_appliances/1.json
  def show
  end

  # GET /home_appliances/new
  def new
    @home_appliance = HomeAppliance.new
  end

  # GET /home_appliances/1/edit
  def edit
  end

  # POST /home_appliances or /home_appliances.json
  def create
    @home_appliance = HomeAppliance.new(home_appliance_params)

    respond_to do |format|
      if @home_appliance.save
        format.html { redirect_to @home_appliance, notice: "Home appliance was successfully created." }
        format.json { render :show, status: :created, location: @home_appliance }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @home_appliance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /home_appliances/1 or /home_appliances/1.json
  def update
    respond_to do |format|
      if @home_appliance.update(home_appliance_params)
        format.html { redirect_to @home_appliance, notice: "Home appliance was successfully updated." }
        format.json { render :show, status: :ok, location: @home_appliance }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @home_appliance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /home_appliances/1 or /home_appliances/1.json
  def destroy
    @home_appliance.destroy
    respond_to do |format|
      format.html { redirect_to home_appliances_url, notice: "Home appliance was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_home_appliance
      @home_appliance = HomeAppliance.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def home_appliance_params
      params.require(:home_appliance).permit(:image, :brandname, :description, :condition, :location, :price)
    end
end
