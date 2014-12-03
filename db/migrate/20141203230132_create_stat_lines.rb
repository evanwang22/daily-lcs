class CreateStatLines < ActiveRecord::Migration
  def change
    create_table :stat_lines do |t|

      t.timestamps
    end
  end
end
