class SchoolInfosController < ApplicationController
  before_action :set_school_info, only: [:show, :edit, :update, :destroy]

  # GET /school_infos
  # GET /school_infos.json
  def index
    @school_infos = SchoolInfo.all
  end

  # GET /school_infos/1
  # GET /school_infos/1.json
  def show
  end

  # GET /school_infos/new
  def new
    @school_info = SchoolInfo.new
    @infos = Info.all
    @school = School.find(params[:school_id])
  end

  # GET /school_infos/1/edit
  def edit
    @infos = Info.all
  end

  # POST /school_infos
  # POST /school_infos.json
  def create
    @school_info = SchoolInfo.new(school_info_params)
    @school_info.school_id = params[:school_id]

    respond_to do |format|
      if @school_info.save
        format.html { redirect_to @school_info, notice: 'School info was successfully created.' }
        format.json { render :show, status: :created, location: @school_info }
      else
        format.html { render :new }
        format.json { render json: @school_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /school_infos/1
  # PATCH/PUT /school_infos/1.json
  def update
    respond_to do |format|
      if @school_info.update(school_info_params)
        format.html { redirect_to @school_info, notice: 'School info was successfully updated.' }
        format.json { render :show, status: :ok, location: @school_info }
      else
        format.html { render :edit }
        format.json { render json: @school_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /school_infos/1
  # DELETE /school_infos/1.json
  def destroy
    @school_info.destroy
    respond_to do |format|
      format.html { redirect_to school_infos_url, notice: 'School info was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_school_info
      @school_info = SchoolInfo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def school_info_params
      params.require(:school_info).permit(:school_id, :info_id)
    end
end
