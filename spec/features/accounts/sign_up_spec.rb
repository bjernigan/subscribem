require 'spec_helper'
feature 'Accounts' do 
	scenario 'creating an account' do
		visit subscribem.root_url
		click_link 'Account Sign Up'
		fill_in 'Name', :with => 'Test'
		fill_in 'Email', :with => 'subscribem@example.com'
		password_field_id = 'account_owner_attributes_password'
		fill_in password_field_id, :with => 'password'
		fill_in 'Password confirmation', :with => 'password'
		click_button 'Create Account'
		page.should have_content("Signed in as subscribem@example.com")
	end
end