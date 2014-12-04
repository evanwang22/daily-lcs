class AddLineupRefToEntries < ActiveRecord::Migration
  def change
    add_reference :entries, :lineup, index: true
  end
end
