class AddColumnToGame < ActiveRecord::Migration[5.1]
  def change

    add_column :games, :cached_votes_up, :integer, :default => 0
    add_column :games, :cached_votes_down, :integer, :default => 0
    add_column :games, :cached_votes_score, :integer, :default => 0
    add_index  :games, :cached_votes_up
    add_index  :games, :cached_votes_down
    add_index  :games, :cached_votes_score
  end
end
