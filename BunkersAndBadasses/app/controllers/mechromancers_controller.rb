class MechromancersController < ApplicationController
  before_action :set_mechromancer, only: [:show, :edit, :update, :destroy]

  # GET /mechromancers
  # GET /mechromancers.json
  def index
    @mechromancers = Mechromancer.all
  end

  # GET /mechromancers/1
  # GET /mechromancers/1.json
  def show
  end

  # GET /mechromancers/new
  def new
    @mechromancer = Mechromancer.new
  end

  # GET /mechromancers/1/edit
  def edit
  end

  # POST /mechromancers
  # POST /mechromancers.json
  def create
    @mechromancer = Mechromancer.new(mechromancer_params)

    respond_to do |format|
      if @mechromancer.save
        format.html { redirect_to @mechromancer, notice: 'Mechromancer was successfully created.' }
        format.json { render :show, status: :created, location: @mechromancer }
      else
        format.html { render :new }
        format.json { render json: @mechromancer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mechromancers/1
  # PATCH/PUT /mechromancers/1.json
  def update
    respond_to do |format|
      if @mechromancer.update(mechromancer_params)
        format.html { redirect_to @mechromancer, notice: 'Mechromancer was successfully updated.' }
        format.json { render :show, status: :ok, location: @mechromancer }
      else
        format.html { render :edit }
        format.json { render json: @mechromancer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mechromancers/1
  # DELETE /mechromancers/1.json
  def destroy
    @mechromancer.destroy
    respond_to do |format|
      format.html { redirect_to mechromancers_url, notice: 'Mechromancer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mechromancer
      @mechromancer = Mechromancer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mechromancer_params
      params.require(:mechromancer).permit(:character_name, :level, :experience, :health, :current_health, :action_points, :badass_points, :evasion)
    end
end
