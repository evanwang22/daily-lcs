class Contest < ActiveRecord::Base
    self.inheritance_column = nil

	has_many :entries
	has_many :lineups , through: :entries
	has_many :users, through: :entries
end
