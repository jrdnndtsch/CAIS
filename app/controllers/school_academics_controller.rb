class SchoolAcademicsController < ApplicationController
  before_action :set_school_academic, only: [:show, :edit, :update, :destroy]

  # GET /school_academics
  # GET /school_academics.json
  def index
    @school_academics = SchoolAcademic.all
  end

  # GET /school_academics/1
  # GET /school_academics/1.json
  def show
  end

  # GET /school_academics/new
  def new
    @school_academic = SchoolAcademic.new
    @academics = Academic.all
    @school = School.find(params[:school_id])
  end

  # GET /school_academics/1/edit
  def edit
    @academics = Academic.all
  end

  # POST /school_academics
  # POST /school_academics.json
  def create
    school = School.find(params[:school_id])
    @school_academic = SchoolAcademic.new(school_academic_params)
    @school_academic.school_id = params[:school_id]

    respond_to do |format|
      if @school_academic.save
        format.html { redirect_to edit_school_path(params[:school_id]), notice: 'School academic was successfully created.' }
        format.json { render :show, status: :created, location: @school_academic }
      else
        format.html { render :new }
        format.json { render json: @school_academic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /school_academics/1
  # PATCH/PUT /school_academics/1.json
  def update
    respond_to do |format|
      if @school_academic.update(school_academic_params)
        format.html { redirect_to edit_school_path(params[:school_id]), notice: 'School academic was successfully updated.' }
        format.json { render :show, status: :ok, location: @school_academic }
      else
        format.html { render :edit }
        format.json { render json: @school_academic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /school_academics/1
  # DELETE /school_academics/1.json
  def destroy
    @school = @school_academic.school
    @school_academic.destroy
    respond_to do |format|
      format.html { redirect_to edit_school_path(@school), notice: 'School academic was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_school_academic
      @school_academic = SchoolAcademic.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def school_academic_params
      params.require(:school_academic).permit(:school_id, :academic_id)
    end
end
