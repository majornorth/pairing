class Event < ActiveRecord::Base
  attr_accessible :location, :sport, :start
  has_many :quotes
end
