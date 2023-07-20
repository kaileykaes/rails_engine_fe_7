require 'rails_helper'

RSpec.describe MerchantFacade do
  before(:each) do
    @if = ItemFacade.new
  end

  describe 'initialize' do
    it 'exists' do 
      expect(@if).to be_an ItemFacade
    end
  end

  describe 'methods' do 
    it '#merchant_items' do 
      items = @if.merchant_items(1)
      expect(items).to be_an Array

      items.each do |item|
        expect(item).to be_a Item
        expect(item.id).to be_a Integer
        expect(item.name).to be_a String
        expect(item.description).to be_a String
        expect(item.unit_price).to be_a Float
        expect(item.merchant_id).to eq(1)
      end
    end
  end
end