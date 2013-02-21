require 'spec_helper'

describe CostsController do

	# auth
	include AuthHelper
	before(:each) do
		http_login
	end

	describe "POST /costs" do
		it "should connect the logged in user to the cost"
		
		context "with valid attributes" do
			it "creates a new cost" do
				expect{
					post :create, cost: FactoryGirl.attributes_for(:cost)
				}.to change(Cost, :count).by(1)
			end
			it "redirects to new new cost" do
				post :create, cost: FactoryGirl.attributes_for(:cost)
				response.should redirect_to Cost.last
			end
		end
	end
end
