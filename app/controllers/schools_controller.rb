class SchoolsController < ApplicationController
  before_action :set_school, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:index, :show]


  def compare 
    @schools = School.all
    @compared = params[:is_checked]
    if params[:is_checked]
      # raise "hell"
      render :compare_js
      # render js: "window.location.pathname='#{compare_schools_path}'" 
    end  
  end
  # GET /schools
  # GET /schools.json
  def index
    @provinces = Province.all
    @schools = School.all
    if params[:is_checked]
      @stuff = "stuff"
      @compared = params[:is_checked]
      render :compare_js
    end
  end

  # GET /schools/1
  # GET /schools/1.json
  def show
  end

  # GET /schools/new
  def new
    @school = School.new
    @academics = Academic.all
  end

  # GET /schools/1/edit
  def edit
    @academics = Academic.all
  end

  # POST /schools
  # POST /schools.json
  def create
    @school = School.new(school_params)

    respond_to do |format|
      if @school.save
        format.html { redirect_to @school, notice: 'School was successfully created.' }
        format.json { render :show, status: :created, location: @school }
      else
        format.html { render :new }
        format.json { render json: @school.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /schools/1
  # PATCH/PUT /schools/1.json
  def update
    respond_to do |format|
      if @school.update(school_params)
        format.html { redirect_to @school, notice: 'School was successfully updated.' }
        format.json { render :show, status: :ok, location: @school }
      else
        format.html { render :edit }
        format.json { render json: @school.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /schools/1
  # DELETE /schools/1.json
  def destroy
    @school.destroy
    respond_to do |format|
      format.html { redirect_to schools_url, notice: 'School was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_school
      @school = School.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def school_params
      params.require(:school).permit(:name, :street_address, :postal_code, :website_url, :contact_email, :description, :girls_boarding, :girls_day, :boys_boarding, :boys_day, :campus_size, :year_founded, :average_class_size, :student_teacher_ratio, :dress_code, :student_body, :seven_day_tuition, :five_day_tuition, :boarding_grades, :day_grades, :day_tuition, :accreditations, :advanced_placement, :international_bac, :payment_plans, :need_based_aid, :merit_scholarships, :city_id)
    end
end
