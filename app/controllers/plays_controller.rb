class PlaysController < ApplicationController
  before_filter :sanitize_params

  def index
  end

  def new
    @play = Play.new
  end

  def create
    @play = Play.new(play_params.merge(game_id: params["play"]["game"]))

    if @play.valid?
      render 'plays/result'
    else
      render :action => 'new'
    end
  end

  private
    def play_params
      params[:play].permit(:players)
    end

    def sanitize_params
      params[:game] = params[:game].to_i
    end

end