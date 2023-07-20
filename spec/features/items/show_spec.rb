require 'rails_helper'

RSpec.describe 'item Show page', type: :feature do
  describe 'show page' do
    it 'can be visited from index' do 
      visit items_path

      click_on "Item Nemo Facere"

      expect(current_path).to eq("/items/4")
    end

    it 'has name of item' do 
      visit "/items/4"

      expect(page).to have_content("Item Nemo Facere")
    end

    it 'has descriptions for attributes' do 
      visit "/items/4"

    expect(page).to have_content("Description:")
    expect(page).to have_content("Unit Price:")
    end
  
    it 'has attributes of item' do 
      visit "/items/4" 
      
      expect(page).to have_content("Sunt eum id eius magni consequuntur delectus veritatis. Quisquam laborum illo ut ab. Ducimus in est id voluptas autem.")
      expect(page).to have_content("42.91")
    end
  end
end