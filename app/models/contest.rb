class Contest < ActiveRecord::Base
    self.inheritance_column = nil

	has_many :entries
	has_many :lineups , through: :entries
	has_many :users, through: :entries

	def as_json(options = {})
    	super.merge(startTime: self.start.strftime('%a %d.%m.%Y %H:%M:%S')).merge(endTime: self.end.strftime('%a %d.%m.%Y %H:%M:%S'))
  	end
end
