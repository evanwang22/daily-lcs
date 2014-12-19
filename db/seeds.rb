# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# Users
User.create(username: 'testuser', email: 'test@test.com', password: 'test')


# Contests
i = 0 
n = 50

while i < n do
	name = 'Contest ' + i.to_s
	type = Random.rand() > 0.5 ? 'tournament' : 'league'
	start = Random.rand() > 0.5 ? "29/12/2014 13:00".to_time : "28/12/2014 13:00".to_time
	finish = "29/12/2014 00:00".to_time
	capacity = type == 'tournament' ? Random.rand(5) + 1 * 100 : Random.rand(5) + 1 * 10
	cost = Random.rand() > 0.5 ? (Random.rand() > 0.5 ? 10 : 5) : (Random.rand() > 0.5 ? 2 : 1)
	pub = true

	Contest.create(  :name => name, 
					 :type => type, 
					 :start => start, 
					 :end => finish, 
					 :capacity => capacity, 
					 :cost => cost, 
					 :public => pub )

	i += 1
end
