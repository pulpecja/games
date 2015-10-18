require 'spec_helper'

describe Game do 
  it "is valid with a name, max_players, min_players" do 
    game = Game.new(
      name: 'Game of thrones',
      max_players: 5,
      min_players: 2)
    expect(game).to be_valid
  end

  it "is invalid without a name" do 
    expect(Game.new(name: nil)).to have(1).errors_on(:name)
  end

  it "is invalis without min_players" do 
    expect(Game.new(min_players: nil)).to have(1).errors_on(:min_players)
  end

  it "is invalid without max_players" do 
    expect(Game.new(max_players: nil)).to have(1).errors_on(:max_players)
  end
end