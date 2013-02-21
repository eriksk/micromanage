require 'spec_helper'

describe CostsController do

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
			it "attaches the current user to the cost" do
				pending "do user login first"
				post :create, cost: FactoryGirl.attributes_for(:cost, :user_id => current_user.id)
				Cost.last.user.should eq currrent_user
			end
		end
	end
end
