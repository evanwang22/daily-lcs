class Player < ActiveRecord::Base
	attr_accessor :name, :position, :team, :salary

	has_and_belongs_to_many :lineups
	has_many :stat_lines
end
