class RacesController < ApplicationController
	before_action :set_race, only: [:show, :edit, :update, :destroy]

  def index
  	@races = Race.all
  end

  def show
  end

  def new
  	@race = Race.new
  end

  def edit
  end

  def create
  	@race = Race.new(race_params)
  	respond_to do |format|
  		if @race.save
  			format.html { redirect_to @race, notice: 'Race was successfully created.'}
  			format.json { render :show, status: :created, location: @race }
  		else
  			format.html { render :new }
  			format.json { render json: @race.errors, status: :unprocessable_entity }
  		end
  	end
  end

  def update
  	respond_to do |format|
      if @race.update(race_params)
        format.html { redirect_to @race, notice: 'Race was successfully updated.' }
        format.json { render :show, status: :ok, location: @race }
      else
        format.html { render :edit }
        format.json { render json: @race.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy 
  	@race.destroy
    respond_to do |format|
      format.html { redirect_to races_url, notice: 'Race was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_race
      @race = Race.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def race_params
      params[:race].permit(:name, :game_id)
    end
end
