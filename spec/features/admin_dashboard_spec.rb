require 'rails_helper'

feature "visiting the admin dashboard" do
  scenario "the visitor can click on link to crm" do
    visit admin_dashboard_path

    expect(page).to have_link 'Access StrongArm CRM', href: 'http://crm.imaginaryinformation.com'
  end
end