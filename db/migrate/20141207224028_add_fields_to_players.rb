class AddFieldsToPlayers < ActiveRecord::Migration
  def change
  	add_column :players, :name, :string
  	add_column :players, :position, :string
  	add_column :players, :salary, :integer
  	add_column :players, :team, :string
  end
end
