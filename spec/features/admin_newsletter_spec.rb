require 'rails_helper'

feature "visiting the admin dashboard" do

	let!(:newsletter_email) {FactoryGirl.create(:newsletter_email)}
  
  scenario "the admin can see a list of newsletter emails" do
    visit admin_newsletter_path

    expect(page).to have_content "V22"
    expect(page).to have_link 'Show', count: 1
    expect(page).to have_link 'New Newsletter email', href: new_newsletter_email_path
  end
end