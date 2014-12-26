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
n = 150

while i < n do
	name = 'Contest ' + i.to_s
	rand = Random.rand();
	type = rand < 0.3 ? 'tournament' : (rand < 0.6 ? 'league' : (rand < 0.8 ? 'h2h': 'multiplier'));
	start = Random.rand() > 0.5 ? Time.parse("2015-01-02 16:00") : Time.parse("2015-01-03 13:00")
	finish = Time.parse("2015-01-05 00:00")
	capacity = type == 'tournament' ? (Random.rand(5) + 1) * 100 : (type == 'league' ? (Random.rand(5) + 1) * 10 : (type == 'h2h' ? 2 : 100));
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
