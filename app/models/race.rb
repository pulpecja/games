class Race < ActiveRecord::Base
  belongs_to :game

  validates :name, presence: true

  scope :available, -> (players) { where("start_from <= ?", players) }

end
