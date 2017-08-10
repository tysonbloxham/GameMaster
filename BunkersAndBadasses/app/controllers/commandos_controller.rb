class CommandosController < ApplicationController
  before_action :set_commando, only: [:show, :edit, :update, :destroy]

  # GET /commandos
  # GET /commandos.json
  def index
    @commandos = Commando.all
  end

  # GET /commandos/1
  # GET /commandos/1.json
  def show
  end

  # GET /commandos/new
  def new
    @commando = Commando.new
  end

  # GET /commandos/1/edit
  def edit
  end

  # POST /commandos
  # POST /commandos.json
  def create
    @commando = Commando.new(commando_params)

    respond_to do |format|
      if @commando.save
        format.html { redirect_to @commando, notice: 'Commando was successfully created.' }
        format.json { render :show, status: :created, location: @commando }
      else
        format.html { render :new }
        format.json { render json: @commando.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /commandos/1
  # PATCH/PUT /commandos/1.json
  def update
    respond_to do |format|
      if @commando.update(commando_params)
        format.html { redirect_to @commando, notice: 'Commando was successfully updated.' }
        format.json { render :show, status: :ok, location: @commando }
      else
        format.html { render :edit }
        format.json { render json: @commando.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /commandos/1
  # DELETE /commandos/1.json
  def destroy
    @commando.destroy
    respond_to do |format|
      format.html { redirect_to commandos_url, notice: 'Commando was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_commando
      @commando = Commando.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def commando_params
      params.require(:commando).permit(:character_name, :level, :experience, :health, :current_health, :action_points, :badass_points, :evasion)
    end
end
