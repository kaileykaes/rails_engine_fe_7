class MerchantFacade

  def merchants 
    format_index(index_data).map do |merchant_datum|
      Merchant.new(merchant_datum)
    end
  end

  def merchant(id)
    argument = format_datum(merchant_data(id))
    Merchant.new(argument)
  end

  private

  def index_data 
    MerchantService.call('/api/v1/merchants')[:data]
  end
  
  def merchant_data(id)
    MerchantService.call("/api/v1/merchants/#{id}")[:data]
  end

  def format_index(data)
    data.map do |datum|
      { id: datum[:id], 
        name: datum[:attributes][:name]
      }
    end
  end

  def format_datum(datum)
    { id: datum[:id], 
      name: datum[:attributes][:name]
    }
  end
end