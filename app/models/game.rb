class Game < ActiveRecord::Base
  has_many :races

  validates :name, :min_players, :max_players, presence: true

  accepts_nested_attributes_for :races
end
