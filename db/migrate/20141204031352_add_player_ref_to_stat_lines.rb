class AddPlayerRefToStatLines < ActiveRecord::Migration
  def change
    add_reference :stat_lines, :player, index: true
  end
end
