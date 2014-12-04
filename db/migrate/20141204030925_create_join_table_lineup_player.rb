class CreateJoinTableLineupPlayer < ActiveRecord::Migration
  def change
    create_join_table :lineups, :players do |t|
      # t.index [:lineup_id, :player_id]
      # t.index [:player_id, :lineup_id]
    end
  end
end
