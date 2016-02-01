require 'rails_helper'

RSpec.feature 'Places' do
  context 'As a visitor' do
    scenario 'I can add my location' do
      visit places_path
      click_on 'Suggest New Place'
      fill_in 'Name', with: 'The Foundation'
      fill_in 'Description', with: 'A hackerspace in Christchurch'
      fill_in 'Address', with: '292 Kilmore St, Christchurch, New Zealand'
      click_on 'Create Place'

      visit places_path
      expect(page).to have_content('The Foundation')
    end
  end
end
