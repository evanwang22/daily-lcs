class Contest < ActiveRecord::Base
	attr_accessor :name, :type, :start, :end, :capacity, :cost, :public

	has_many :entries
	has_many :lineups , through: :entries
	has_many :users, through: :entries
end
