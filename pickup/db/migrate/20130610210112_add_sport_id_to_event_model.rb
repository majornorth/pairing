class AddSportIdToEventModel < ActiveRecord::Migration
  def change
  	add_column :events, :sport_id, :integer
  end
end
