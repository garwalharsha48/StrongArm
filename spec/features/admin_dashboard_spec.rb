require 'rails_helper'

feature "visiting the admin dashboard" do
	let(:admin) {FactoryGirl.create(:admin)}

  def fill_in_signin_fields
    fill_in "admin[email]", with: admin.email
    fill_in "admin[password]", with: admin.password
    click_button "Log in"
  end

  scenario "the visitor can click on link to crm" do
    visit admin_dashboard_path
    fill_in_signin_fields
    
    expect(page).to have_link 'CRM', href: 'http://crm.strongarmtech.com'
  end
end