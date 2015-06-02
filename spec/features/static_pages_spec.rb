require 'rails_helper'

feature "visiting static pages" do
  scenario "the visitor clicks on V22 on homepage" do
    visit root_path
    click_link "THE V22"

    expect(page).to have_content("Introducing the V22, a revolutionary lifting device.")
  end

  scenario "the visitor clicks on THE ERGOHUG on homepage" do
    visit root_path
    click_link "THE ERGOHUG"

    expect(page).to have_content("The ErgoHug reduces nursing injuries & cost,
while increasing patient comfort. ")
  end

  scenario "the visitor clicks on OUR PROCESS on homepage" do
    visit root_path
    click_link "OUR PROCESS"

    expect(page).to have_content("We are committed to unlocking human potential
through innovative design.")
  end

  scenario "the visitor clicks on OUR PROCESS on homepage" do
    visit root_path
    click_link "About"

    expect(page).to have_content("StrongArm Technologies develops breakthroughs in worker safety, strength, and endurance.")
  end

  scenario "the visitor visits The Flx page" do
    visit "/flx"
    
    expect(page).to have_content("Flx")
  end

end