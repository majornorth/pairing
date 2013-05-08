class AddEventIdToQuotes < ActiveRecord::Migration
  def change
  	add_column :quotes, :event_id, :integer
  end
end
