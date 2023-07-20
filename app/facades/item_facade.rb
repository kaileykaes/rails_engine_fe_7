class ItemFacade
  def merchant_items(merchant_id)
    items = format_items(merchant_items_data(merchant_id)).map do |item_info|
      Item.new(item_info)
    end
  end

  private
  
  def merchant_items_data(id)
    MerchantService.call("/api/v1/merchants/#{id}/items")[:data]
  end

  def format_items(data)
    data.map do |datum|
      { id: datum[:id], 
        name: datum[:attributes][:name], 
        description: datum[:attributes][:description], 
        unit_price: datum[:attributes][:unit_price], 
        merchant_id: datum[:attributes][:merchant_id]
      }
    end
  end
end