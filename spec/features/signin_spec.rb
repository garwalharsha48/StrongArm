require 'rails_helper'

feature "visiting the site to sign in" do
  let(:admin) {FactoryGirl.create(:admin)}

  def fill_in_signin_fields
    fill_in "admin[email]", with: admin.email
    fill_in "admin[password]", with: admin.password
    click_button "LOGIN"
  end

  scenario "as an admin" do
    visit admin_dashboard_path
    fill_in_signin_fields
    expect(page).to have_link 'CRM', href: 'http://crm.strongarmtech.com'
  end

  scenario "from home page" do
    visit root_path
    click_link "Login"
    fill_in_signin_fields
    expect(page).to have_link 'CRM', href: 'http://crm.strongarmtech.com'
  end
end