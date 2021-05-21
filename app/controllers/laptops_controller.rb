class LaptopsController < ApplicationController
  before_action :set_laptop, only: %i[ show edit update destroy ]

  # GET /laptops or /laptops.json
  def index
    @laptops = Laptop.all
  end

  # GET /laptops/1 or /laptops/1.json
  def show
  end

  # GET /laptops/new
  def new
    @laptop = Laptop.new
  end

  # GET /laptops/1/edit
  def edit
  end

  # POST /laptops or /laptops.json
  def create
    @laptop = Laptop.new(laptop_params)

    respond_to do |format|
      if @laptop.save
        format.html { redirect_to @laptop, notice: "Laptop was successfully created." }
        format.json { render :show, status: :created, location: @laptop }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @laptop.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /laptops/1 or /laptops/1.json
  def update
    respond_to do |format|
      if @laptop.update(laptop_params)
        format.html { redirect_to @laptop, notice: "Laptop was successfully updated." }
        format.json { render :show, status: :ok, location: @laptop }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @laptop.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /laptops/1 or /laptops/1.json
  def destroy
    @laptop.destroy
    respond_to do |format|
      format.html { redirect_to laptops_url, notice: "Laptop was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_laptop
      @laptop = Laptop.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def laptop_params
      params.require(:laptop).permit(:image, :brandname, :description, :condition, :location)
    end
end
