class AddColumnForAttendeesToEventsTable < ActiveRecord::Migration
  def change
  	remove_column :users, :attendance, :integer
  end
end
