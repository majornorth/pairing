class DropUsersActivitiesTable < ActiveRecord::Migration
  def change
  	drop_table :users_activities
  end
end
