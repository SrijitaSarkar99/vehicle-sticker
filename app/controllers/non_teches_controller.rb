class NonTechesController < ApplicationController
  before_action :set_non_tech, only: %i[ show edit update destroy ]

  # GET /non_teches or /non_teches.json
  def index
    @non_teches = NonTech.all
  end

  # GET /non_teches/1 or /non_teches/1.json
  def show
  end

  # GET /non_teches/new
  def new
    @non_tech = NonTech.new
  end

  # GET /non_teches/1/edit
  def edit
  end

  def success
  end

  # POST /non_teches or /non_teches.json
  def create
    @non_tech = NonTech.new(non_tech_params)

    respond_to do |format|
      if @non_tech.save
        format.html { render :success, notice: "Non tech was successfully created." }
        format.json { render :show, status: :created, location: @non_tech }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @non_tech.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /non_teches/1 or /non_teches/1.json
  def update
    respond_to do |format|
      if @non_tech.update(non_tech_params)
        format.html { redirect_to non_tech_url(@non_tech), notice: "Non tech was successfully updated." }
        format.json { render :show, status: :ok, location: @non_tech }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @non_tech.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /non_teches/1 or /non_teches/1.json
  def destroy
    @non_tech.destroy

    respond_to do |format|
      format.html { redirect_to non_teches_url, notice: "Non tech was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_non_tech
      @non_tech = NonTech.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def non_tech_params
      params.require(:non_tech).permit(:name, :email, :office, :phone, :vehicle_no, :adhar_no, :license, :employee_no, :aadhar_img, :license_img, :photo, :registration_img)
    end
end
