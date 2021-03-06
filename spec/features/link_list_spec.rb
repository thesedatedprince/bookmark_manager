require 'spec_helper'

feature 'list of links' do
  scenario 'user would like to view a list of links' do
    Link.create(url: 'http://www.bbc.co.uk', title: 'BBC')
    visit '/'
    expect(page.status_code).to eq 200

    within 'ul#links' do
      expect(page).to have_content('BBC')
    end
  end
end
