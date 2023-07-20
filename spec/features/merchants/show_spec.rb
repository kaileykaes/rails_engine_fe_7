require 'rails_helper'

RSpec.describe 'Merchant Show page', type: :feature do
  describe 'show page' do
    it 'can be visited from index' do 
      visit merchants_path

      click_on "Schroeder-Jerde"

      expect(current_path).to eq("/merchants/1")
    end

    it 'has name of merchant' do 
      visit "/merchants/1"

      expect(page).to have_content("Schroeder-Jerde")
    end

    it 'has descriptions for attributes' do 
      visit "/merchants/1"

      within(".items") do 
        expect(page).to have_content("Name:")
        expect(page).to have_content("Description:")
        expect(page).to have_content("Unit Price:")
      end
    end

    it 'has items of merchant' do 
      visit "/merchants/1" do 

        within(".items") do 
          expect(page).to have_content("Item Nemo Facere")
          expect(page).to have_content("Numquam officiis reprehenderit eum ratione neque tenetur.")
          expect(page).to have_content("Item Ea Voluptatum")
        end
      end
    end
  end
end