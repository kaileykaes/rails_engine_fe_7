require 'rails_helper'

RSpec.describe 'Merchant Show page', type: :feature do
  describe 'show page' do
    it 'can be visited from index' do 
      visit merchants_path

      click_on "Schroeder-Jerde"

      expect(current_path).to eq("merchants/1")
    end
  end
end