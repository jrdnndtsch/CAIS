class SchoolsController < ApplicationController
  before_action :set_school, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:index, :show]



  # GET /schools
  # GET /schools.json
  def index
    @provinces = Province.all
    @schools = School.all.order('name')
    if params[:student_body]
      if params[:advanced_placement] == 'yes'
         advanced_placement = true
        elsif params[:advanced_placement] == 'no'
          advanced_placement = false
        else
          advanced_placement = params[:advanced_placement]
      end
      if params[:international_bac] == 'yes'
         international_bac = true
        elsif params[:international_bac] == 'no'
          international_bac = false
        else
          international_bac = params[:international_bac]
      end
      if params[:pre_grade_nine_boarding] == 'yes'
         pre_grade_nine_boarding = true
        elsif params[:pre_grade_nine_boarding] == 'no'
          pre_grade_nine_boarding = false
        else
          pre_grade_nine_boarding = params[:pre_grade_nine_boarding]
      end
      if params[:province].present?
        province = params[:province]
      else
        province = 'any'
      end
      student_body = params[:student_body]
      min = params[:slider_min]
      max = params[:slider_max]
      @schools = School.search(province, student_body, min, max, international_bac, advanced_placement, pre_grade_nine_boarding).order('name')
      render :schools_js
    else
      @schools = School.all.order('name')
    end
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
    @campus = Campu.all
    @recreations = Recreation.all
    @school_academic = SchoolAcademic.new
    @school_campu = SchoolCampu.new
    @school_recreation = SchoolRecreation.new
  end

  # POST /schools
  # POST /schools.json
  def create
    @school = School.new(school_params)

    respond_to do |format|
      if @school.save
        format.html { redirect_to edit_school_path(@school), notice: 'School was successfully created.' }
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
      @school = School.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def school_params
      params.require(:school).permit(:name, :street_address, :postal_code, :website_url, :contact_email, :description, :girls_boarding, :girls_day, :boys_boarding, :boys_day, :campus_size, :year_founded, :average_class_size, :student_teacher_ratio, :dress_code, :student_body, :seven_day_tuition, :five_day_tuition, :boarding_grades, :day_grades, :day_tuition, :accreditations, :advanced_placement, :international_bac, :payment_plans, :need_based_aid, :merit_scholarships, :city_id, :featured, :logo, :religion, :pre_grade_nine_boarding, :featured_image_url, :logo_image_url, :video_url, :summer_programs, :esl, :student_body_size, :contact_name,  {:academic_ids => []}, {:campu_ids => []}, {:recreation_ids => []})
    end
end
