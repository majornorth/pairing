class CreateJoinTableForUsersAndActivities < ActiveRecord::Migration
	def change
	    create_table :users_activities, :id => false do |t|
	      t.integer :user_id
	      t.integer :activity_id
	    end
	end
end
