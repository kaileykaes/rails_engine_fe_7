require 'rails_helper'

RSpec.describe '/items', type: :feature do
  before(:each) do
    visit '/items'
  end

  describe 'Items Index' do
    it 'lists names of items' do 
      expect(page).to have_content('Items')
      within(".items") do
        expect(page).to have_content("Item Nemo Facere")
        expect(page).to have_content("Item Iusto Atque")
        expect(page).to have_content("Item Sunt Nesciunt")
      end
    end
    
    it 'names of items link to items' do 
      expect(page).to have_link("Item Nemo Facere", href: '/items/4')
      expect(page).to have_link("Item Expedita Aliquam", href: '/items/5')
      expect(page).to have_link("Item Recusandae Voluptas", href: '/items/97')
    end
  end
end