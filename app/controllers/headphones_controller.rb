class HeadphonesController < ApplicationController
  before_action :set_headphone, only: %i[ show edit update destroy ]

  # GET /headphones or /headphones.json
  def index
    @headphones = Headphone.all
  end

  # GET /headphones/1 or /headphones/1.json
  def show
  end

  # GET /headphones/new
  def new
    @headphone = Headphone.new
  end

  # GET /headphones/1/edit
  def edit
  end

  # POST /headphones or /headphones.json
  def create
    @headphone = Headphone.new(headphone_params)

    respond_to do |format|
      if @headphone.save
        format.html { redirect_to @headphone, notice: "Headphone was successfully created." }
        format.json { render :show, status: :created, location: @headphone }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @headphone.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /headphones/1 or /headphones/1.json
  def update
    respond_to do |format|
      if @headphone.update(headphone_params)
        format.html { redirect_to @headphone, notice: "Headphone was successfully updated." }
        format.json { render :show, status: :ok, location: @headphone }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @headphone.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /headphones/1 or /headphones/1.json
  def destroy
    @headphone.destroy
    respond_to do |format|
      format.html { redirect_to headphones_url, notice: "Headphone was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_headphone
      @headphone = Headphone.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def headphone_params
      params.require(:headphone).permit(:image, :brandname, :description, :condition, :location)
    end
end
