class Band < ActiveRecord::Base
  has_and_belongs_to_many :venues
  validates(:band_name, :presence => true)
  validates(:band_name, :uniqueness => true)
end
