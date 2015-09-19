class AcademicTypesController < ApplicationController
  before_action :set_academic_type, only: [:show, :edit, :update, :destroy]

  # GET /academic_types
  # GET /academic_types.json
  def index
    @academic_types = AcademicType.all
  end

  # GET /academic_types/1
  # GET /academic_types/1.json
  def show
  end

  # GET /academic_types/new
  def new
    @academic_type = AcademicType.new
  end

  # GET /academic_types/1/edit
  def edit
  end

  # POST /academic_types
  # POST /academic_types.json
  def create
    @academic_type = AcademicType.new(academic_type_params)

    respond_to do |format|
      if @academic_type.save
        format.html { redirect_to admin_path, notice: 'Academic type was successfully created.' }
        format.json { render :show, status: :created, location: @academic_type }
      else
        format.html { render :new }
        format.json { render json: @academic_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /academic_types/1
  # PATCH/PUT /academic_types/1.json
  def update
    respond_to do |format|
      if @academic_type.update(academic_type_params)
        format.html { redirect_to admin_path, notice: 'Academic type was successfully updated.' }
        format.json { render :show, status: :ok, location: @academic_type }
      else
        format.html { render :edit }
        format.json { render json: @academic_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /academic_types/1
  # DELETE /academic_types/1.json
  def destroy
    @academic_type.destroy
    respond_to do |format|
      format.html { redirect_to admin_path, notice: 'Academic type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_academic_type
      @academic_type = AcademicType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def academic_type_params
      params.require(:academic_type).permit(:name)
    end
end
