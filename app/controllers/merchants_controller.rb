class MerchantsController < ApplicationController
  before_action :facade
  
  def index
    @merchants = @facade.merchants
  end
  
  private
  def facade 
    @facade = MerchantFacade.new
  end
end