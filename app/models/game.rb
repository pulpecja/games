class Game < ActiveRecord::Base
  has_many :races

  validates :name, presence: true
  validates :min_players, presence: true
  validates :max_players, presence: true

  accepts_nested_attributes_for :races
end
