require 'spec_helper'

feature 'welcome page' do
  scenario 'has an intro section' do
    visit "/"

    expect(page).to have_css('section#intro')
  end
 
  scenario 'has a who we are section' do
    visit "/"

    expect(page).to have_css('section#who')
  end

  scenario 'has a what we do section' do
    visit "/"

    expect(page).to have_css('section#what')
  end

  scenario 'has a work with us section' do
    visit "/"

    expect(page).to have_css('section#who')
  end

 scenario 'has a contact form' do
   visit "/"
   expect(page).to have_css('form#contact_form')
 end

end
