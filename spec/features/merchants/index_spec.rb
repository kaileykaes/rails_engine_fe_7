require 'rails_helper'

RSpec.describe '/merchants', type: :feature do
  before(:each) do
    visit '/merchants'
  end

  describe 'Merchants Index' do
    it 'lists names of merchants' do 
      expect(page).to have_content('Merchants')
      within(".merchants") do
        expect(page).to have_content("Schroeder-Jerde")
        expect(page).to have_content("Klein, Rempel and Jones")
        expect(page).to have_content("Willms and Sons")
      end
    end
    
    it 'names of merchants link to merchants' do 
      expect(page).to have_link("Schroeder-Jerde", href: '/merchants/1')
      expect(page).to have_link("Klein, Rempel and Jones", href: '/merchants/2')
      expect(page).to have_link("Willms and Sons", href: '/merchants/3')
    end
  end
end