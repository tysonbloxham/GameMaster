class AssassinsController < ApplicationController
  before_action :set_assassin, only: [:show, :edit, :update, :destroy]

  # GET /assassins
  # GET /assassins.json
  def index
    @assassins = Assassin.all
  end

  # GET /assassins/1
  # GET /assassins/1.json
  def show
  end

  # GET /assassins/new
  def new
    @assassin = Assassin.new
  end

  # GET /assassins/1/edit
  def edit
  end

  # POST /assassins
  # POST /assassins.json
  def create
    @assassin = Assassin.new(assassin_params)

    respond_to do |format|
      if @assassin.save
        format.html { redirect_to @assassin, notice: 'Assassin was successfully created.' }
        format.json { render :show, status: :created, location: @assassin }
      else
        format.html { render :new }
        format.json { render json: @assassin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /assassins/1
  # PATCH/PUT /assassins/1.json
  def update
    respond_to do |format|
      if @assassin.update(assassin_params)
        format.html { redirect_to @assassin, notice: 'Assassin was successfully updated.' }
        format.json { render :show, status: :ok, location: @assassin }
      else
        format.html { render :edit }
        format.json { render json: @assassin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /assassins/1
  # DELETE /assassins/1.json
  def destroy
    @assassin.destroy
    respond_to do |format|
      format.html { redirect_to root_path, notice: 'Assassin was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_assassin
      @assassin = Assassin.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def assassin_params
      params.require(:assassin).permit(:character_name, :level, :experience, :health, :current_health, :action_points, :badass_points, :evasion)
    end
end
