require 'rails_helper'

RSpec.describe Post, type: :model do
  describe "Creation" do
  	before do
			@user = User.create(first_name: 'test_first_name', last_name: 'test_last_name')
			@post = Post.create(date: Date.today, rationale: "Lorem ipsum", user: @user)
  	end
  	it "can be created" do 
  		expect(@post).to be_valid
  	end

  	it "cannot be created without a date and rationale" do 
  		@post.date = nil
  		@post.rationale = nil
  		expect(@post).to_not be_valid
		end
  end
end
