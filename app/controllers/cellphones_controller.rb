class CellphonesController < ApplicationController
  before_action :set_cellphone, only: %i[ show edit update destroy ]

  # GET /cellphones or /cellphones.json
  def index
    @cellphones = Cellphone.all
  end

  # GET /cellphones/1 or /cellphones/1.json
  def show
  end

  # GET /cellphones/new
  def new
    @cellphone = Cellphone.new
  end

  # GET /cellphones/1/edit
  def edit
  end

  # POST /cellphones or /cellphones.json
  def create
    @cellphone = Cellphone.new(cellphone_params)

    respond_to do |format|
      if @cellphone.save
        format.html { redirect_to @cellphone, notice: "Cellphone was successfully created." }
        format.json { render :show, status: :created, location: @cellphone }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @cellphone.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cellphones/1 or /cellphones/1.json
  def update
    respond_to do |format|
      if @cellphone.update(cellphone_params)
        format.html { redirect_to @cellphone, notice: "Cellphone was successfully updated." }
        format.json { render :show, status: :ok, location: @cellphone }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @cellphone.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cellphones/1 or /cellphones/1.json
  def destroy
    @cellphone.destroy
    respond_to do |format|
      format.html { redirect_to cellphones_url, notice: "Cellphone was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cellphone
      @cellphone = Cellphone.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cellphone_params
      params.require(:cellphone).permit(:image, :brandname, :color, :memory, :description, :condition, :location, :price)
    end
end
