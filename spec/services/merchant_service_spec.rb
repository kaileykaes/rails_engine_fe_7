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

  describe 'instance methods' do 
    it '#conn' do 
      response = @ms.conn
      expect(response).to be_a Faraday::Connection
    end

    it '#get_url' do 
      response = @ms.get_url('/merchants')
      expect(response).to be_a Hash
      expect(response[:data]).to be_a Array

      merchant_data = response[:data].first

      expect(merchant_data).to have_key(:id)
      expect(merchant_data[:id]).to be_an Integer

      expect(merchant_data).to have_key(:attributes)
      expect(merchant_data[:attributes]).to be_a Hash

      expect(merchant_data[:attributes]).to have_key(:name)
      expect(merchant_data[:attributes][:name]).to be_a String
    end
  end
end