class CampuTypesController < ApplicationController
  before_action :set_campu_type, only: [:show, :edit, :update, :destroy]

  # GET /campus_types
  # GET /campus_types.json
  def index
    @campu_types = CampuType.all
  end

  # GET /campus_types/1
  # GET /campus_types/1.json
  def show
  end

  # GET /campus_types/new
  def new
    @campu_type = CampuType.new
  end

  # GET /campus_types/1/edit
  def edit
  end

  # POST /campus_types
  # POST /campus_types.json
  def create
    @campu_type = CampuType.new(campu_type_params)

    respond_to do |format|
      if @camp_type.save
        format.html { redirect_to @campu_type, notice: 'Camp type was successfully created.' }
        format.json { render :show, status: :created, location: @campu_type }
      else
        format.html { render :new }
        format.json { render json: @campu_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /campus_types/1
  # PATCH/PUT /campus_types/1.json
  def update
    respond_to do |format|
      if @campu_type.update(campu_type_params)
        format.html { redirect_to @campu_type, notice: 'Campu type was successfully updated.' }
        format.json { render :show, status: :ok, location: @campu_type }
      else
        format.html { render :edit }
        format.json { render json: @campu_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /campus_types/1
  # DELETE /campus_types/1.json
  def destroy
    @campu_type.destroy
    respond_to do |format|
      format.html { redirect_to campu_types_url, notice: 'Campu type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_campu_type
      @campu_type = CampuType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def campus_type_params
      params.require(:campu_type).permit(:name)
    end
end
