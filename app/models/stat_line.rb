class StatLine < ActiveRecord::Base
	# Game info
	attr_accessor :position, :team, :opponent, :game
	
	# Player Statistics
	attr_accessor :cs, :kills, :deaths, :assists, :triples, :quadras, :pentas
	
	# Team Statistics
	attr_accessor :win, :barons, :dragons, :towers, :firstblood

end
