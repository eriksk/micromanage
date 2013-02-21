require 'spec_helper'

describe User do
	it "has a valid factory" do
		FactoryGirl.create(:user).should be_valid
	end

	it "is invalid without an email" do
		FactoryGirl.build(:user, :email => nil).should_not be_valid
	end
	it "is invalid without a name" do
		FactoryGirl.build(:user, :name => nil).should_not be_valid
	end
	it "is invalid without a currency" do
		FactoryGirl.build(:user, :currency => nil).should_not be_valid
	end
	it "is invalid without a password" do
		FactoryGirl.build(:user, :password => nil).should_not be_valid
	end
	it "is invalid without a salary" do
		FactoryGirl.build(:user, :salary => nil).should_not be_valid
	end
	it "is invalid without a tax" do
		FactoryGirl.build(:user, :tax => nil).should_not be_valid
	end
	it "is invalid without a currency" do
		FactoryGirl.build(:user, :currency => nil).should_not be_valid
	end

	describe "relations" do
		it "has many costs" do
			FactoryGirl.create(:user).should respond_to :costs
		end
	end
	
end
