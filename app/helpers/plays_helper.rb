module PlaysHelper
  def chosen_game
    @play.game
  end

  def game_races
    unless @races
      @races = chosen_game.races.available(@play.players_number).map{ |race| race.name }.shuffle
    end
    @races
  end
end
