require 'spec_helper'

feature 'nav bar' do
  scenario 'has a separate section' do
    visit "/"

    expect(page).to have_css('header.navigation')
  end

  scenario 'has a logo' do
    visit "/"

    within('header.navigation') {
      expect(page).to have_css('.navigation-wrapper, .logo') 
    }
  end

  scenario 'has a what we do link' do

  end
  
  scenario 'has a who we are link' do

  end

  scenario 'has a work with us link' do

  end

  scenario 'has a blog link' do

  end
end
