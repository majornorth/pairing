class DropQuotesTable < ActiveRecord::Migration
  def change
  	drop_table :quotes
  end
end
