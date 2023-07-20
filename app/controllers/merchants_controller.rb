class MerchantsController < ApplicationController
  before_action :facade
  
  def index
    @merchants = @facade.merchants
  end

  def show
    ifacade = ItemFacade.new
    @merchant = @facade.merchant(params[:id])
    @items = ifacade.merchant_items(params[:id])
  end
  
  private
  def facade 
    @facade = MerchantFacade.new
  end
end