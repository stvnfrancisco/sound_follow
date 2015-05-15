class Venue < ActiveRecord::Base
  has_and_belongs_to_many :bands
  validates(:venue_name, :presence => true)
  validates(:venue_name, :uniqueness => true)
end
