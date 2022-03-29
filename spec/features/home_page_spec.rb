require "rails_helper"

RSpec.feature "Visiting the homepage", type: :feature do
  scenario "The visitor should see projects" do
    visit root_path
    expect(page).to have_text("Projects")
  end
  scenario "The visitor should see Home" do
    visit root_path
    expect(page).to have_text("Home")
  end
  scenario "The visitor should see Troy Joslyn" do
    visit root_path
    expect(page).to have_text("Troy Joslyn")
  end
  scenario "The visitor should see navbar" do
    visit root_path
    expect(page).to have_xpath("//nav")
  end
end