class Item
  attr_reader :name, 
              :description, 
              :unit_price, 
              :merchant_id
  
  def initialize(attributes)
    @name = attributes[:name]
    @description = attributes[:description]
    @unit_price = attributes[:unit_price]
    @merchant_id = attributes[:merchant_id]
  end
end