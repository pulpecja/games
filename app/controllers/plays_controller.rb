class PlaysController < ApplicationController

  def index
  end

  def new
    @play = Play.new(game_id: params[:game_id])
  end

  def create
    @play = Play.new(play_params)
    @players = @play.players_names.split(',')

    if @play.valid?
      render 'plays/result'
    else
      render action: 'new'
    end
  end

  private
  def play_params
    params[:play].permit(:players_names, :game_id)
  end

end