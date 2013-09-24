class Novelist < ActiveRecord::Base
  attr_accessible :name, :gender, :born, :died, :nationality
  has_many :novels
end
