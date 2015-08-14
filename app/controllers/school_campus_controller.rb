class SchoolCampusController < ApplicationController
  before_action :set_school_campu, only: [:show, :edit, :update, :destroy]

  # GET /school_campus
  # GET /school_campus.json
  def index
    @school_campus = SchoolCampu.all
  end

  # GET /school_campus/1
  # GET /school_campus/1.json
  def show
  end

  # GET /school_campus/new
  def new
    @school_campu = SchoolCampu.new
  end

  # GET /school_campus/1/edit
  def edit
  end

  # POST /school_campus
  # POST /school_campus.json
  def create
    @school_campu = SchoolCampu.new(school_campu_params)

    respond_to do |format|
      if @school_campu.save
        format.html { redirect_to @school_campu, notice: 'School campu was successfully created.' }
        format.json { render :show, status: :created, location: @school_campu }
      else
        format.html { render :new }
        format.json { render json: @school_campu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /school_campus/1
  # PATCH/PUT /school_campus/1.json
  def update
    respond_to do |format|
      if @school_campu.update(school_campu_params)
        format.html { redirect_to @school_campu, notice: 'School campu was successfully updated.' }
        format.json { render :show, status: :ok, location: @school_campu }
      else
        format.html { render :edit }
        format.json { render json: @school_campu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /school_campus/1
  # DELETE /school_campus/1.json
  def destroy
    @school_campu.destroy
    respond_to do |format|
      format.html { redirect_to school_campus_url, notice: 'School campu was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_school_campu
      @school_campu = SchoolCampu.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def school_campu_params
      params.require(:school_campu).permit(:school_id, :campu_id)
    end
end
