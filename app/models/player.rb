class Player < ActiveRecord::Base

	has_and_belongs_to_many :lineups
	has_many :stat_lines
end
