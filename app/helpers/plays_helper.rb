module PlaysHelper
  def chosen_game
    @play.game
  end

  def players_number
    @play.players
  end

  def players
    plays = []
    players_number.times do |i|
      plays << "Player #{i+1}"
    end
    plays
  end

  def game_races
    unless @races
      @races = chosen_game.races.map{ |race| race.name }.shuffle
    end
    @races
  end

  def dupa
    players_number.times do |i|
      players[i]
      "-"
      game_races[i]
    end
  end
end
