class SirensController < ApplicationController
  before_action :set_siren, only: [:show, :edit, :update, :destroy]

  # GET /sirens
  # GET /sirens.json
  def index
    @sirens = Siren.all
  end

  # GET /sirens/1
  # GET /sirens/1.json
  def show
  end

  # GET /sirens/new
  def new
    @siren = Siren.new
  end

  # GET /sirens/1/edit
  def edit
  end

  # POST /sirens
  # POST /sirens.json
  def create
    @siren = Siren.new(siren_params)

    respond_to do |format|
      if @siren.save
        format.html { redirect_to @siren, notice: 'Siren was successfully created.' }
        format.json { render :show, status: :created, location: @siren }
      else
        format.html { render :new }
        format.json { render json: @siren.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sirens/1
  # PATCH/PUT /sirens/1.json
  def update
    respond_to do |format|
      if @siren.update(siren_params)
        format.html { redirect_to @siren, notice: 'Siren was successfully updated.' }
        format.json { render :show, status: :ok, location: @siren }
      else
        format.html { render :edit }
        format.json { render json: @siren.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sirens/1
  # DELETE /sirens/1.json
  def destroy
    @siren.destroy
    respond_to do |format|
      format.html { redirect_to root_path, notice: 'Siren was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_siren
      @siren = Siren.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def siren_params
      params.require(:siren).permit(:character_name, :level, :experience, :health, :action_points, :badass_points, :evasion)
    end
end
