class Entry < ActiveRecord::Base
	belongs_to :contest
	belongs_to :user
	belongs_to :lineup

	# Scopes (narrow DB queries) for searching entries by different fields
	# just syntactic sugar for defining an actual class method
	scope :by_contest, lambda { |contest_id| where(:contest_id => contest_id)}
	scope :by_user, lambda { |user_id| where(:user_id => user_id)}
	scope :by_lineup, lambda { |lineup_id| where(:lineup_id => lineup_id)}
end
