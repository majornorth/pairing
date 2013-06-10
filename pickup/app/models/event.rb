class Event < ActiveRecord::Base
  attr_accessible :location, :sport, :sport_id, :start, :organizer
  has_and_belongs_to_many :users
end
