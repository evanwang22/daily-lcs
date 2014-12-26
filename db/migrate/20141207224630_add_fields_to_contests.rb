class AddFieldsToContests < ActiveRecord::Migration
  def change
  	add_column :contests, :name, :string
  	add_column :contests, :type, :string
  	add_column :contests, :start, :datetime
  	add_column :contests, :end, :datetime
  	add_column :contests, :capacity, :integer
  	add_column :contests, :cost, :integer
  	add_column :contests, :public, :booleann
  end
end
