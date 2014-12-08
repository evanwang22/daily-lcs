class AddFieldsToStatLines < ActiveRecord::Migration
  def change
  	add_column :stat_lines, :position, :string
  	add_column :stat_lines, :team, :string
  	add_column :stat_lines, :opponent, :string
  	add_column :stat_lines, :game, :integer

  	add_column :stat_lines, :cs, :integer
  	add_column :stat_lines, :kills, :integer
  	add_column :stat_lines, :deaths, :integer
  	add_column :stat_lines, :assists, :integer
  	add_column :stat_lines, :triples, :integer
  	add_column :stat_lines, :quadras, :integer
  	add_column :stat_lines, :pentas, :integer

  	add_column :stat_lines, :win, :boolean
  	add_column :stat_lines, :barons, :integer
  	add_column :stat_lines, :dragons, :integer
  	add_column :stat_lines, :towers, :integer
  	add_column :stat_lines, :firstblood, :boolean
  end
end