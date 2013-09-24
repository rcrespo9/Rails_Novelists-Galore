require 'spec_helper'

describe Novel do
	before :each do
	@novel = Novel.new(title: "Catastrophe", year_published: 2013, genre: "Horror")
	end

describe "#title" do
	it "should return the correct title" do
		@novel.title.should eq("Catastrophe")
	end
describe "#year_published" do
	it "should return the year_published" do
		@novel.year_published.should eq(2013)
	end
describe "#genre" do
	it "should return the genre" do
		@novel.genre.should eq("Horror")
	end
end
end
end
end 