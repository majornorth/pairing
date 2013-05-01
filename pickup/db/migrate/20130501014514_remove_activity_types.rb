class RemoveActivityTypes < ActiveRecord::Migration
  def change
  	drop_table :activity_types
  	drop_table :activities
  end
end
