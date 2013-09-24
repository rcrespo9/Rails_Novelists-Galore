require 'spec_helper'

describe Novelist do
  before :each do
  	@novelist = Novelist.new(name: "Rudy Crespo", gender: "Male", born: "June 20, 1990", died: "N/A", nationality: "American")
  	@novel = Novel.new(title: "Catastrophe", year_published: 2013)
  	@novelist.novels << @novel
  end
describe "#name" do
	it "should return the correct name" do
		@novelist.name.should eq("Rudy Crespo")
	end
describe "#gender" do
	it "should return the correct gender" do
		@novelist.gender.should eq("Male")
	end
describe "#born" do
	it "should return the correct born" do
		@novelist.born.should eq("June 20, 1990")
	end
describe "#died" do
	it "should return the correct died" do
		@novelist.died.should eq("N/A")
	end
describe "#nationality" do
	it "should return the correct nationality" do
		@novelist.nationality.should eq("American")
	end
describe "#novel" do 
	it "should return an array" do 
		@novelist.novels.class.should eq(Array)
	end

	it "should return at least a Novel object if its not empty" do 
		@novelist.novels.first.class.should eq(Novel)
	end
end
end
end
end
end
end
end
