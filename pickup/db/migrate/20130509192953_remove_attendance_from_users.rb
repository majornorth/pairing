class RemoveAttendanceFromUsers < ActiveRecord::Migration
  def up
    remove_column :users, :attendance
  end

  def down
    add_column :users, :attendance, :integer
  end
end
