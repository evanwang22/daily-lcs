class Contest < ActiveRecord::Base
	attr_accessor :name, :type, :start, :end, :capacity, :cost, :public
end
