require 'spec_helper'

feature 'packages page' do
  scenario 'has an overview' do
    visit "/packages"

    expect(page).to have_css('section#packages-overview')
  end

  scenario "has a section for cards" do
    visit "/packages"
    
    expect(page).to have_css('section#packages-cards')
  end
end
