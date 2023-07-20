require 'rails_helper'

RSpec.describe Merchant do
  before(:each) do
    @merchant = Merchant.new({
      id: '1', 
      name: "Schroeder-Jerde"
    })
  end

  describe 'initialize' do 
    it 'exists' do
      expect(@merchant).to be_a Merchant
    end

    it 'has attributes' do 
      expect(@merchant.name).to eq("Schroeder-Jerde")
      expect(@merchant.id).to eq(1)
    end
  end
end