class Play < ActiveRecord::Base
  def self.columns() @columns ||= []; end

  def self.column(name, sql_type = nil, default = nil, null = true)
    columns << ActiveRecord::ConnectionAdapters::Column.new(name.to_s, default, sql_type.to_s, null)
  end

  column :game_id, :integer
  column :players_names, :string

  belongs_to :game

  validate :validate_players_number

  def players_number
    players_names.split(',').length
  end

  private

  def validate_players_number
    if players_number > game.max_players
      errors.add(:players_names, 'Zbyt duża liczba graczy')
    elsif players_number < game.min_players
      errors.add(:players_names, 'Zbyt mała liczba graczy')
    end
  end

end