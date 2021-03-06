require 'rails_helper'

feature "visiting the admin dashboard" do

	let!(:newsletter_email) {FactoryGirl.create(:newsletter_email)}
  let(:admin) {FactoryGirl.create(:admin)}

  def fill_in_signin_fields
    fill_in "admin[email]", with: admin.email
    fill_in "admin[password]", with: admin.password
    click_button "LOGIN"
  end
  scenario "the admin can see a list of newsletter emails" do
    visit admin_dashboard_path
    fill_in_signin_fields

    expect(page).to have_content newsletter_email.first_name
    expect(page).to have_content newsletter_email.email
    expect(page).to have_link 'Show', count: 1
    
  end
end