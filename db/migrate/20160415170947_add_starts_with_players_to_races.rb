class AddStartsWithPlayersToRaces < ActiveRecord::Migration
  def change
    add_column :races, :start_from, :integer, default: 1, null: false
  end
end
