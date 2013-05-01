class ChangeColumnName < ActiveRecord::Migration
  def change
  	rename_column :activities, :type, :name
  end
end
