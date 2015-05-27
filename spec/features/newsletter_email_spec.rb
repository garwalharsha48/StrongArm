require 'rails_helper'

feature "visiting the mailing list page" do

	def fillin_form
		fill_in "newsletter_email[first_name]", with: "Justin"
		fill_in "newsletter_email[email]", with: "justin@strongarmtech.com" 
		click_button "SIGN UP"
	end	

  scenario "the visitor can sign up to mailing list" do
    visit root_path
    click_link "Sign Up to Our Mailing List"
    expect(page).to have_css("input.login-field.name-field")
    fillin_form

    expect(page).to have_content("Thanks for signing up.")
  	
  	open_email('justin@strongarmtech.com')
  	expect(current_email.to).to eq ['justin@strongarmtech.com']
    expect(current_email.subject).to eq 'Welcome from StrongArm Tech'
    expect(current_email).to have_content('Thanks for signing up to the StrongArm email') 
    clear_emails
  end
end