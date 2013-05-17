class Event < ActiveRecord::Base
  attr_accessible :location, :sport, :start, :organizer
  has_and_belongs_to_many :users
end
