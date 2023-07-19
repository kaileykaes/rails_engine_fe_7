class MerchantFacade

  def merchants 
    merchants = merchant_data.map do |merchant_datum|
      Merchant.new(merchant_datum)
    end
  end

  private
  def data 
    MerchantService.call('/api/v1/merchants')[:data]
  end

  def merchant_data
    data.map do |datum|
      { id: datum[:id], 
        name: datum[:attributes][:name]
      }
    end
  end
end