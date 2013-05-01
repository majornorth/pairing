class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :sport
      t.datetime :start
      t.text :location

      t.timestamps
    end
  end
end
