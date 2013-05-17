class EventsAddCurrentUserAsOrganizer < ActiveRecord::Migration
  def change
  	change_table :events do |t|
  		t.integer :organizer
  	end
  end
end
