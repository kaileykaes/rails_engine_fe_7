class Item
  attr_reader :id,
              :name, 
              :description, 
              :unit_price, 
              :merchant_id
  
  def initialize(attributes)
    @id = attributes[:id].to_i
    @name = attributes[:name]
    @description = attributes[:description]
    @unit_price = attributes[:unit_price].to_f
    @merchant_id = attributes[:merchant_id].to_i
  end
end