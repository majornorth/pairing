class EventsTableDropAttendeesColumn < ActiveRecord::Migration
  def change
  	remove_column :events, :attendees
  end
end
