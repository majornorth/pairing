class User < ActiveRecord::Base
  attr_accessible :email, :firstName, :lastName, :mobile, :password
  has_and_belongs_to_many :events
end
