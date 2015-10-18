require 'spec_helper'

describe Race do 
  it "is valid with a name, game_id" do 
    race = Race.new(
      name: 'Greyjoy',
      game_id: 1)
    expect(race).to be_valid
  end

  it "is invalid without a name" do 
    expect(Race.new(name: nil)).to have(1).errors_on(:name)
  end

  it "is invalid without a game_id" do 
    expect(Race.new(game_id: nil)).to have(1).errors_on(:game_id)
  end
end