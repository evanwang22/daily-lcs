class Lineup < ActiveRecord::Base

	has_many :entries
	has_and_belongs_to_many :players
	belongs_to :user
end
