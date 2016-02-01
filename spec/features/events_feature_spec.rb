require 'rails_helper'

RSpec.feature 'Events' do
  context 'As a visitor' do
    scenario 'I can add a new event' do
      visit events_path
      click_on 'New Event'
      fill_in 'Name', with: 'Weekly meet-up'
      fill_in 'Description', with: 'Hack night!'
      click_on 'Create Event'

      visit events_path
      expect(page).to have_content('Weekly meet-up')
    end
  end
end
