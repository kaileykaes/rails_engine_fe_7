require 'rails_helper'

RSpec.describe MerchantFacade do
  before(:each) do
    @mf = MerchantFacade.new
  end

  describe 'initialize' do
    it 'exists' do 
      expect(@mf).to be_a MerchantFacade
    end
  end

  describe 'methods' do 
    it '#merchants' do 
      merchants = @mf.merchants
      expect(merchants).to be_a Array

      merchants.each do |merchant|
        expect(merchant).to be_a Merchant
        expect(merchant.id).to be_a Integer
        expect(merchant.name).to be_a String
      end
    end

    it '#merchant' do 
      merchant = @mf.merchant(1)
      expect(merchant).to be_a Merchant
      expect(merchant.id).to eq(1)
      expect(merchant.name).to eq("Schroeder-Jerde")
    end
  end
end