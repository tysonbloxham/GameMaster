class GunzerkersController < ApplicationController
  before_action :set_gunzerker, only: [:show, :edit, :update, :destroy]

  # GET /gunzerkers
  # GET /gunzerkers.json
  def index
    @gunzerkers = Gunzerker.all
  end

  # GET /gunzerkers/1
  # GET /gunzerkers/1.json
  def show
  end

  # GET /gunzerkers/new
  def new
    @gunzerker = Gunzerker.new
  end

  # GET /gunzerkers/1/edit
  def edit
  end

  # POST /gunzerkers
  # POST /gunzerkers.json
  def create
    @gunzerker = Gunzerker.new(gunzerker_params)

    respond_to do |format|
      if @gunzerker.save
        format.html { redirect_to @gunzerker, notice: 'Gunzerker was successfully created.' }
        format.json { render :show, status: :created, location: @gunzerker }
      else
        format.html { render :new }
        format.json { render json: @gunzerker.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gunzerkers/1
  # PATCH/PUT /gunzerkers/1.json
  def update
    respond_to do |format|
      if @gunzerker.update(gunzerker_params)
        format.html { redirect_to @gunzerker, notice: 'Gunzerker was successfully updated.' }
        format.json { render :show, status: :ok, location: @gunzerker }
      else
        format.html { render :edit }
        format.json { render json: @gunzerker.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gunzerkers/1
  # DELETE /gunzerkers/1.json
  def destroy
    @gunzerker.destroy
    respond_to do |format|
      format.html { redirect_to gunzerkers_url, notice: 'Gunzerker was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gunzerker
      @gunzerker = Gunzerker.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gunzerker_params
      params.require(:gunzerker).permit(:character_name, :level, :experience, :health, :current_health, :action_points, :badass_points, :evasion)
    end
end
