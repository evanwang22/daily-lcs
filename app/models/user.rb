class User < ActiveRecord::Base

	has_secure_password

	validates_presence_of :password, :email, :on => :create
	validates_uniqueness_of :email

	has_many :lineups
	has_many :entries
	has_many :contests, through: :entries

end
