class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :sport
      t.datetime :when
      t.integer :joined
      t.string :location
      t.string :note
      t.timestamp :posted_on

      t.timestamps
    end
  end
end
