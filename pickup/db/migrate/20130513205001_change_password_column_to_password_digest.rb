class ChangePasswordColumnToPasswordDigest < ActiveRecord::Migration
  change_table :users do |t|
  	t.rename :password, :password_digest
  end
end
