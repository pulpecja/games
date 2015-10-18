class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
    	t.string :name
    	t.integer :max_players
    	t.integer :min_players
      t.timestamps
    end
  end
end
