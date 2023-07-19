require 'rails_helper'

RSpec.describe '/merchants', type: :feature do
  before(:each) do
    visit '/merchants'
  end

  describe 'Merchants Index' do
    it 'lists names of merchants' do 
      # expect(page).to have_content()
    end

    it 'names of merchants link to merchants' do 
      
    end
  end
end