require 'rails_helper'

RSpec.describe MerchantService do 
  before(:each) do 
    @ms = MerchantService.new
  end

  describe 'initialize' do 
    it 'exists' do 
      expect(@ms).to be_a MerchantService
    end
  end

  describe 'class method' do 
    it '#call' do 
      response = ItemService.call('/api/v1/items')
      expect(response).to be_a Hash
      expect(response[:data]).to be_a Array

      item_data = response[:data].first
      expect(item_data).to have_key(:id)
      expect(item_data[:id]).to be_a String

      expect(item_data).to have_key(:attributes)
      expect(item_data[:attributes]).to be_a Hash

      expect(item_data[:attributes]).to have_key(:name)
      expect(item_data[:attributes][:name]).to be_a String

      expect(item_data[:attributes]).to have_key(:description)
      expect(item_data[:attributes][:description]).to be_a String

      expect(item_data[:attributes]).to have_key(:unit_price)
      expect(item_data[:attributes][:unit_price]).to be_a Float

      expect(item_data[:attributes]).to have_key(:merchant_id)
      expect(item_data[:attributes][:merchant_id]).to be_an Integer
    end
  end
end