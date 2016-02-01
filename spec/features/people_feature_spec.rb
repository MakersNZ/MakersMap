require 'rails_helper'

RSpec.feature 'People' do
  context 'As a visitor' do
    scenario 'I can add a new person' do
      visit people_path
      click_on 'Suggest New Person'
      fill_in 'Name', with: 'Kylo Ren'
      click_on 'Create Person'

      visit people_path
      expect(page).to have_content('Kylo Ren')
    end
  end
end
