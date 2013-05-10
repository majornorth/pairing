class Event < ActiveRecord::Base
  attr_accessible :location, :sport, :start
  has_many :quotes
  has_and_belongs_to_many :users
end
