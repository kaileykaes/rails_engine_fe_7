require 'rails_helper'

RSpec.describe Item do
  before(:each) do
    @item = Item.new({
      id: '1', 
      name: 'Item Excepturi Rem', 
      description: "Perferendis reprehenderit fugiat sit eos. Corporis ipsum ut. Natus molestiae quia rerum fugit quis. A cumque doloremque magni.",
      unit_price: '476.82', 
      merchant_id: '99'
    })
  end

  describe 'initialize' do 
    it 'exists' do 
      expect(@item).to be_a Item
    end
    
    it 'has attributes' do 
      expect(@item.id).to eq(1)
      expect(@item.name).to eq('Item Excepturi Rem')
      expect(@item.description).to eq("Perferendis reprehenderit fugiat sit eos. Corporis ipsum ut. Natus molestiae quia rerum fugit quis. A cumque doloremque magni.")
      expect(@item.unit_price).to eq(476.82)
      expect(@item.merchant_id).to eq(99)
    end
  end
end