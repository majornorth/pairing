class Activity < ActiveRecord::Base
  attr_accessible :name, :id
  has_and_belongs_to_many :users 
end
