class Novel < ActiveRecord::Base
	attr_accessible :title, :year_published, :genre
	belongs_to :novelist
end