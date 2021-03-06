require 'spec_helper'

describe "LayoutLinks" do

	it "should have a home page at '/'" do
		get '/'
		response.should have_selector('title', :content => "Home")
	end

	it "should have a contact page at '/contact'" do
		get '/contact'
		response.should have_selector('title', :content => "Contact")
	end

	it "should have a about page at '/about'" do
		get '/about'
		response.should have_selector('title', :content => "About")
	end

	it "should have a help page at '/help'" do
		get '/help'
		response.should have_selector('title', :content => "Help")
	end

	# it "should have a signup page at '/signup'" do
	# 	get '/signup'
	# 	response.should have_selector('title', :content => "Sign up")
	# end

		it "should have a signin page at '/signin'" do
		get '/signin'
		response.should have_selector('title', :content => "Sign in")
	end

	# it "should have the right link on thelayout" do
	# 	visit root_path
	# 	response.should have_selector('title', :content => "Home")
	# 	click_link "About"
	# 	response.should have_selector('title', :content => "About")
	# 	click_link "Contact"
	# 	response.should have_selector('title', :content => "Contact")
	# 	click_link "Home"
	# 	response.should have_selector('title', :content => "Home")
	# 	click_link "Sign up now!"
	# 	response.should have_selector('title', :content => "Sign up")
	# 	response.should have_selector('a[href="/"]>img')
	# end

	describe "when not signed in" do
		it "should have a signin link" do
			visit root_path
			response.should have_selector("a", :href => signin_path, :content => "Sign in")
		end
	end
end
