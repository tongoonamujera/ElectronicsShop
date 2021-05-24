class TelevisionsController < ApplicationController
  before_action :set_television, only: %i[ show edit update destroy ]

  # GET /televisions or /televisions.json
  def index
    @televisions = Television.all
  end

  # GET /televisions/1 or /televisions/1.json
  def show
  end

  # GET /televisions/new
  def new
    @television = Television.new
  end

  # GET /televisions/1/edit
  def edit
  end

  # POST /televisions or /televisions.json
  def create
    @television = Television.new(television_params)

    respond_to do |format|
      if @television.save
        format.html { redirect_to @television, notice: "Television was successfully created." }
        format.json { render :show, status: :created, location: @television }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @television.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /televisions/1 or /televisions/1.json
  def update
    respond_to do |format|
      if @television.update(television_params)
        format.html { redirect_to @television, notice: "Television was successfully updated." }
        format.json { render :show, status: :ok, location: @television }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @television.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /televisions/1 or /televisions/1.json
  def destroy
    @television.destroy
    respond_to do |format|
      format.html { redirect_to televisions_url, notice: "Television was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_television
      @television = Television.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def television_params
      params.require(:television).permit(:image, :brandname, :description, :condition, :location, :price)
    end
end
