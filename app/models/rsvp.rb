class Rsvp < ActiveRecord::Base
  validates_numericality_of :adults, :message => 'Number of adults must be a number!'
  validates_numericality_of :children, :message => 'Number of children must be a number!'
  validates_presence_of :names, :message => 'The names of the people attending in your party are required!'
end
