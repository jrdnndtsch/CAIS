class RecreationTypesController < ApplicationController
  before_action :set_recreation_type, only: [:show, :edit, :update, :destroy]

  # GET /recreations_types
  # GET /recreations_types.json
  def index
    @recreations_types = RecreationType.all
  end

  # GET /recreations_types/1
  # GET /recreations_types/1.json
  def show
  end

  # GET /recreations_types/new
  def new
    @recreations_type = RecreationType.new
  end

  # GET /recreations_types/1/edit
  def edit
  end

  # POST /recreations_types
  # POST /recreations_types.json
  def create
    @recreation_type = RecreationType.new(recreation_type_params)

    respond_to do |format|
      if @recreation_type.save
        format.html { redirect_to @recreation_type, notice: 'Recreation type was successfully created.' }
        format.json { render :show, status: :created, location: @recreation_type }
      else
        format.html { render :new }
        format.json { render json: @recreation_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /recreations_types/1
  # PATCH/PUT /recreations_types/1.json
  def update
    respond_to do |format|
      if @recreation_type.update(recreation_type_params)
        format.html { redirect_to @recreation_type, notice: 'Recreation type was successfully updated.' }
        format.json { render :show, status: :ok, location: @recreation_type }
      else
        format.html { render :edit }
        format.json { render json: @recreation_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recreations_types/1
  # DELETE /recreations_types/1.json
  def destroy
    @recreation_type.destroy
    respond_to do |format|
      format.html { redirect_to recreation_types_url, notice: 'Recreation type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recreation_type
      @recreation_type = RecreationType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def recreation_type_params
      params.require(:recreation_type).permit(:name)
    end
end
