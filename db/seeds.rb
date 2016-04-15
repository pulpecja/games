game_of_thrones = Game.find_or_create_by(name: 'Gra o Tron', min_players: 3, max_players: 6)
%w(Baratheon Start Lannister).each do |name|
  Race.find_or_create_by(game_id: game_of_thrones.id, name: name)
end
Race.find_or_create_by(game_id: game_of_thrones.id, name: 'Greyjoy', start_from: 4)
Race.find_or_create_by(game_id: game_of_thrones.id, name: 'Tyrell',  start_from: 5)
Race.find_or_create_by(game_id: game_of_thrones.id, name: 'Martell', start_from: 6)

terra_mystica = Game.find_or_create_by(name: 'Terra Mystica', min_players: 2, max_players: 5)
%w(niebieski czerwony zielony żółty brązowy szary czarny).each do |name|
  Race.find_or_create_by(game_id: terra_mystica.id, name: name)
end
