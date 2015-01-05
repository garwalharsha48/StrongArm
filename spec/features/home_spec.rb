require 'rails_helper'

feature "visiting the homepage" do
  scenario "the visitor sees strongarm text" do
    visit root_path

    expect(page).to have_content("Introducing Human Performance Equipment for
injury prevention and peak performance.")
  end
end