class SchoolRecreationsController < ApplicationController
  before_action :set_school_recreation, only: [:show, :edit, :update, :destroy]

  # GET /school_recreations
  # GET /school_recreations.json
  def index
    @school_recreations = SchoolRecreation.all
  end

  # GET /school_recreations/1
  # GET /school_recreations/1.json
  def show
  end

  # GET /school_recreations/new
  def new
    @school_recreation = SchoolRecreation.new
    @recreations = Recreation.all
    @school = School.find(params[:school_id])
  end

  # GET /school_recreations/1/edit
  def edit
    @recreations = Recreation.all
  end

  # POST /school_recreations
  # POST /school_recreations.json
  def create
    @school_recreation = SchoolRecreation.new(school_recreation_params)
    @school_recreation.school_id = params[:school_id]
    respond_to do |format|
      if @school_recreation.save
        format.html { redirect_to edit_school_path(params[:school_id]), notice: 'School recreation was successfully created.' }
        format.json { render :show, status: :created, location: @school_recreation }
      else
        format.html { render :new }
        format.json { render json: @school_recreation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /school_recreations/1
  # PATCH/PUT /school_recreations/1.json
  def update
    respond_to do |format|
      if @school_recreation.update(school_recreation_params)
        format.html { redirect_to edit_school_path(params[:school_id]), notice: 'School recreation was successfully updated.' }
        format.json { render :show, status: :ok, location: @school_recreation }
      else
        format.html { render :edit }
        format.json { render json: @school_recreation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /school_recreations/1
  # DELETE /school_recreations/1.json
  def destroy
    @school_recreation.destroy
    respond_to do |format|
      format.html { redirect_to school_recreations_url, notice: 'School recreation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_school_recreation
      @school_recreation = SchoolRecreation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def school_recreation_params
      params.require(:school_recreation).permit(:school_id, :recreation_id)
    end
end
