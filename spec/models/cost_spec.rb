require 'spec_helper'

describe Cost do
	it "has a valid factory" do
		FactoryGirl.create(:cost).should be_valid
	end

	describe "validation" do
		it "is invalid without a name" do
  	  FactoryGirl.build(:cost, :name => nil).should_not be_valid
		end
		it "is invalid without a frequency" do
  	  FactoryGirl.build(:cost, :frequency => nil).should_not be_valid
		end
		it "is invalid without a value" do
  	  FactoryGirl.build(:cost, :value => nil).should_not be_valid
		end

		it "is invalid with a value of 0" do
			FactoryGirl.build(:cost, :value => 0).should_not be_valid
		end
		it "is invalid with a frequency of 0" do
			FactoryGirl.build(:cost, :frequency => 0).should_not be_valid
		end
	end

	describe "calculations" do
		it "returns a monthly cost" do
			FactoryGirl.create(:cost, :value => 100, :frequency => 4)
				.monthly.should == 25
		end
	
		it "returns a yearly cost" do
			FactoryGirl.create(:cost, :value => 120, :frequency => 2)
				.yearly.should == (120 / 2) * 12
		end
		it "returns a quarterly cost" do
			FactoryGirl.create(:cost, :value => 150, :frequency => 3)
			.quarterly.should == 200
		end
	end

	describe "relations" do
		it "belongs to a user" do
			FactoryGirl.create(:cost).should respond_to :user
		end	
		it "is invalid without a user" do
			FactoryGirl.build(:cost, :user_id => nil).should_not be_valid
		end
	end
end
