class Quote < ActiveRecord::Base
  attr_accessible :attribution, :genesis, :quotation, :event_id
  belongs_to :event 
end
