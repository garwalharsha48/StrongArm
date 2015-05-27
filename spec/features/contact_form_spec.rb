require 'rails_helper'

feature "filling out contact form" do

	def fillin_form
		fill_in "contact_form[name]", with: "Justin"
		fill_in "contact_form[email]", with: "justin@strongarmtech.com" 
		select "Engineering", from: "contact_form[subject]"
    fill_in "contact_form[message]", with: "Just wanted to compliment your engineering skills."
    click_button "SEND MESSAGE"
	end	

  scenario "the visitor can send contact form" do
    visit root_path
    click_link "CONTACT"
    expect(page).to have_css("input.w-input.login-field.name-field")
    fillin_form

    expect(page).to have_content("Thank you for your message. We will contact you soon!")
  	
  	open_email('Rahul@strongarmtech.com')
  	expect(current_email.to).to eq ["Support@strongarmtech.com", "Rahul@strongarmtech.com", "dev@strongarmtech.com"]
    expect(current_email.subject).to eq 'Contact form submission'
    expect(current_email).to have_content('Just wanted to compliment your engineering skills.') 
    clear_emails
  end
end