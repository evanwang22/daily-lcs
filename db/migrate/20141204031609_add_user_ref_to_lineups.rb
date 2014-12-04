class AddUserRefToLineups < ActiveRecord::Migration
  def change
    add_reference :lineups, :user, index: true
  end
end
