class AddColumnForAttendanceToUsersTable < ActiveRecord::Migration
  def change
  	remove_column :events, :attendees, :integer
  end
end
