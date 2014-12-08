class User < ActiveRecord::Base
	attr_accessor :email, :username

	has_many :lineups
	has_many :entries
	has_many :contests, through: :entries

end
